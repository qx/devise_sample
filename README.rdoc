# Devise + CanCanCan + rolify Tutorial

This Tutorial shows you how to setup a [Rails >=3.1](http://rubyonrails.org/) application with a strong and flexible authentication/authorization stack using [Devise](https://github.com/plataformatec/devise), [CanCanCan](https://github.com/CanCanCommunity/cancancan) and [rolify](https://github.com/EppO/rolify) (3.0 and later)

# Installation

First, create a bare new rails app. If you already have an existing app with Devise and CanCanCan set up and you just want to add rolify, just add rolify in your Gemfile, run `bundle install` and skip to step 5
  * `# rails new rolify_tutorial`
  * edit the `Gemfile` and add Devise, CanCanCan and rolify gems:
```ruby
gem 'devise'
gem 'cancancan'
gem 'rolify'
```

2. run `bundle install` to install all required gems

3. Run Devise generator
  * `# rails generate devise:install`

4. Create the User model from Devise
  * `# rails generate devise User`

5. Create the Ability class from CanCanCan
  * `# rails generate cancan:ability`

6. Create the Role class from rolify
  * `# rails generate rolify Role User`
  * remove role.rb 's optional line 5

7. Run migrations
  * `# rake db:migrate`

# Configuration

1. Configure Devise according to your needs. Follow [Devise README](https://github.com/plataformatec/devise/blob/master/README.md) for details.

2. Edit the Ability model class, add these lines in the initialize method:

```ruby
if user.has_role? :admin
  can :manage, :all
else
  can :read, :all
end
```

3. Use the resourcify method in all models you want to put a role on. For example, if we have the Forum model:

```ruby
class Forum < ActiveRecord::Base
  resourcify
end
```

# Usage

1. Create a User using `rails console`

```ruby
> user = User.new
> user.email = "anyemail@address.com"
> user.password = "test1234"
> user.save
```

2. Add a role to the new User

```ruby
> user.add_role "admin"
```

3. Check if the user has admin rights

```ruby
> ability = Ability.new(user)
> ability.can? :manage, :all
  => true
```

# Advanced Usage

If you want to use class scoped role with CanCanCan, it's a bit tricky. Currently in CanCan 1.x, you cannot  mix instance and class checking, because the two are OR-ed and class checking skips the hash of conditions (see [https://github.com/CanCanCommunity/cancancan/wiki/Checking-Abilities](https://github.com/CanCanCommunity/cancancan/wiki/Checking-Abilities) for more details). 
Let's take this ability class example:

```ruby
if user.has_role? :admin
  can :manage, :all
else
  can :read, Forum
  can :write, Forum if user.has_role?(:moderator, Forum)
  can :write, Forum, :id => Forum.with_role(:moderator, user).pluck(:id)
end
```

This **won't** work as you expect, because the last ``:write`` clause will always return ``true`` if you ask ``ability.can? :write, Forum``, even if your user has only a role on an instance of Forum.
But you can use some workarounds: 

* don't use the class scoped role for an instance. That means, you will need class scoped only roles and instance scoped only roles separated. In that case, it's better to use different action names like:

```ruby
if user.has_role? :admin
  can :manage, :all
else
  can :read, Forum
  can :manage, Forum if user.has_role?(:manager, Forum)
  can :write, Forum, :id => Forum.with_role(:moderator, user).pluck(:id)
end
```

* don't use ``can?`` method for class checking. Use rolify instead. so if you want to display a button or some info only if a user has a specific class role, use this:

```rhtml
<% if user.has_role? :moderator %>
  ...
<% end %>
```

and for the instance scoped roles, you still are able to use the ``Ability`` class:

```ruby
if user.has_role? :admin
  can :manage, :all
else
  can :read, Forum
  can :write, Forum, :id => Forum.with_role(:moderator, user).pluck(:id)
end
```

Please note that the ``with_role`` method allows us to restrict the Forum instances the user has a role on. It's provided by rolify library using ``resourcify`` method on the ``Forum`` class.