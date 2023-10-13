def foo():
  var = 1
  def baz():
    nonlocal var
    print(var)
    return var
  return baz

def main():
  result = foo()
  print(result())

if __name__ == "__main__":
  main()
