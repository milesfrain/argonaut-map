Cannot successfully decode JSON representation of a Map over FFI:
```
$ spago run

(fromFoldable [(Tuple "cat" 2),(Tuple "hat" 1)])
PS JSON: [["cat",2],["hat",1]]
JS JSON: [["cat",2],["hat",1],["Foo",42]]
(Left "Couldn't decode List: Value is not an Array")
```
