Demo of a bug in generating tapioca gem code:

```
> bin/srb tc
No errors! Great job.
```

```
> rm sorbet/rbi/gems/set@1.1.2.rbi
> bin/srb tc                                                                              master|✚1-1
lib/ruby_template.rb:10: Argument does not have asserted type T::Set[T.class_of(String)] https://srb.help/7007
    10 |  ALLOWED_RESOURCE_OWNER_TYPES = T.let(Set['User', 'Partner'].freeze, T::Set[T.class_of(String)])
                                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  Got T::Set[String] originating from:
    lib/ruby_template.rb:10:
    10 |  ALLOWED_RESOURCE_OWNER_TYPES = T.let(Set['User', 'Partner'].freeze, T::Set[T.class_of(String)])
                                               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  Detailed explanation:
    String is not a subtype of T.class_of(String) for covariant type member Set::Elem
Errors: 1
exit 100
```
