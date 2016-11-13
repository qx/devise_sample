```
rails g scaffold post content:text
rails g scaffold article content:text
```

```
rails g scaffold comment content:text commentable:references{polymorphic}

```