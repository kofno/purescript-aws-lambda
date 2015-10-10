# purescript-aws-lambda

Purescript integration for AWS Lambda.

#### Context

```purescript
foreign import data Context :: *
```

Wraps the context object provided by AWS Lambda.

#### LAMBDA

```purescript
foreign import data LAMBDA :: !
```

Defines side effects for dealing with AWS Lambda.

`forall eff. Eff (lambda :: LAMBDA | eff)`

#### succeed

```purescript
foreign import succeed :: forall eff. Context -> String -> Eff (lambda :: LAMBDA | eff) Unit
```

Called when your Lambda has finished processing successfully.

#### fail

```purescript
foreign import fail :: forall eff. Context -> String -> Eff (lambda :: LAMBDA | eff) Unit
```

Called when your Lambda has completed processing with an error.




