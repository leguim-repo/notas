# Testing golden rules

- Always check lenght of returned values like queries, arrays, lists...and especially when loops are made to make assertions

~~~
actual_list = [1, 2]
expected_list = [1, 2, 3]
for actual, expected in zip(actual_list, expected_list):
    assert actual == expected
~~~

test like this, need check

~~~
assert len(actual) == len(expected)
~~~
