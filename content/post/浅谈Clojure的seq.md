---
title: 浅谈Clojure的seq
date: 2017-05-13T17:53:11+08:00
update: 2017-05-13T17:53:11+08:00
author: g1eny0ung
cover: /img/浅谈Clojure的seq.jpg
categories: ["语言", "技术"]
tags: ["clojure", "tech"]
draft: true
---

> Clojure defines many algorithms in terms of sequences (seqs). A seq is a logical list, and unlike most Lisps where the list is represented by a concrete, 2-slot structure, Clojure uses the ISeq interface to allow many data structures to provide access to their elements as sequences. 

<!--more-->

我们边引用[clojure.org/reference/sequences](https://clojure.org/reference/sequences)的介绍，边给出我自己的理解：

clojure中的seqs不像大多数lisp用pair对来实现，clojure使用了ISeq接口使大部分数据结构构建在sequence抽象上，许多的clojure数据结构，像list， map， vector，都可以使用很多序列化操作（我习惯这么称呼：）），像map，first，rest等。

我理解的sequence（seq，下面全用seq），是一种抽象的东西，用这种抽象去实现function来操作一系列的数据抽象。clojure给出了seq function，它可以在collection作为参数下返回seq。e.g.:

```
(seq '(1 2 3))
;; => (1 2 3)

(seq [1 2 3])
;; => (1 2 3)

(seq #{1 2 3})
;; => (1 2 3)

(seq {:a 1 :b 2 :c 3})
;; => ([:a 1] [:b 2] [:c 3])
```

再看看map function：

```
(map inc (seq [1 2 3]))
;; => (2 3 4)

(map inc [1 2 3])
;; => (2 3 4)
```

都是seq对吧，Seq Interface有着三种重要的方法，我们可以看一下ISeq的代码：

```
public interface ISeq extends IPersistentCollection {

    Object first();

    ISeq next();

    ISeq more();

    ISeq cons(Object o);
}
```

先说first和cons，第一个是取出序列的第一个元素，cons是将item和seq组成一个新的seq，item处在第一位。

next和more我们先不管，这两个涉及到一点其他的东西，但是doc中明确指出了还有rest function：

> (rest coll) Returns a sequence of the items after the first. Calls seq on its argument. If there are no more items, returns a logical sequence for which seq returns nil.

明明没有啊，好，我们再看一下clojure.core/rest的实现：

```
(def
 ^{:arglists '([coll])
   :tag clojure.lang.ISeq
   :doc "Returns a possibly empty seq of the items after the first. Calls seq on its
  argument."
   :added "1.0"
   :static true}  
 rest (fn ^:static rest [x] (. clojure.lang.RT (more x))))
```

什么！rest其实就是more？那为什么不直接叫rest！

关于这个也让我困扰了很久，我在stackoverflow上发现了一个解释，我觉得可以说明，链接 [why-is-more-of-iseq-not-named-rest](http://stackoverflow.com/questions/15815639/why-is-more-of-iseq-not-named-rest)

好了，我们不去太多的深究这个问题，我想说的是，别看就只有三种方法，可以用它们实现很多。。很多，多到你想象不到的实用function。

我截取了filter和map的部分代码，如下（后面会有许多额外的括号，忽略）：

```
;; filter
(let [f (first s) r (rest s)]
          (if (pred f)
            (cons f (filter pred r))
            (filter pred r))))))))
```

看，如果f**(first)**满足了pred谓词，就会使用**cons**创建一个新的seq，item就是f，coll是（filter pred r），r就是**rest**,
三个core function完成了filter function

再看map

```
;; map
(cons (f (first s)) (map f (rest s)))))))
```

我觉得这也不需要解释了，十分清晰的操作。

好了，今天就说到这，记住seq这个很强大的抽象还有三个core function，能帮助我们很好的理解clojure中的一些奥秘，通过seq library，也就是一些的seq操作function，让我们更加熟练的掌握clojure的seq哲学。同时我建议也要多读几遍clojure／reference／sequences还有ISeq，LazySeq的代码，会体会的更深。

想理解更多，参考：

* [what-is-the-difference-between-the-functions-seq-sequential-and-coll](http://stackoverflow.com/questions/22439174/what-is-the-difference-between-the-functions-seq-sequential-and-coll)
* [Sequences](https://clojure.org/reference/sequences)
* [Lazy](https://clojure.org/reference/lazy)

还有一个是关于collection的，我也贴上来

* [in-clojure-when-should-i-use-a-vector-over-a-list-and-the-other-way-around](http://stackoverflow.com/questions/1147975/in-clojure-when-should-i-use-a-vector-over-a-list-and-the-other-way-around)
