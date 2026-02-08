---
title: 从Logseq到Obsidian
date: 2026-02-08T18:09:04+08:00
lastmod: 2026-02-08T18:09:04+08:00
avatar: /img/personal/avatar.jpg
cover: cover.svg
images:
  - cover.svg
categories:
  - 生活
---

开始使用Obsidian作为我的PKM（Personal Knowledge Management/个人知识管理）工具。

<!--more-->

最近尝试了一下Obsidian，原因是我发觉到Logseq已经好长时间没有更新了，然后我就去看了下官方的GitHub，得知他们已经将Logseq的源代码都切换为两个版本了：一个是Database version，另一个是现存老版本（File version）。说到这个也比较尴尬，因为我之前写了一个[Logseq的主题](https://github.com/g1eny0ung/logseq-github-theme)，后来在UI显示上有的地方出问题了，我就继续在源码里寻找相关的code，看看最新的改动是什么，结果找了半天都没有，我还怀疑是有什么重构了，结果竟然是我刚才说的，直接checkout了一个新仓库，然后把旧代码放到[新仓库](https://github.com/logseq/og)里去了。。真的是晕死，浪费了我好多时间。

回到正题，其实我切换的原因主要是觉得，Logseq做了这么长时间了，老版本一直不那么稳定，我经常遇到莫名其妙的卡顿，比如有时候切换页面快了一些，就可能会卡。还有就是我认为他们官方的精力太分散了，我不认为他们还会将有限的精力放在File version上面，他们现在着重于去开发DB version，这是[DB verison的优势](https://discuss.logseq.com/t/why-the-database-version-and-how-its-going/26744)，但是我的个人想法是，DB version对于我这种不需要实时协作的人来说，在写作和记录的体验上并没有什么质的飞跃。相反，**我对功能的完整性比较看重**，Logseq给我的感觉就是，每个功能都是刚刚做好而已，后续缺少进一步的优化。

举个例子，比如日记功能，即便我当天没有记日记，Logseq仍然会每天自动给我生成一个空日记文件，但我并不是每天都会记，我很有可能1个月都不会写。。相反Obsidian则是按需创建笔记。按照我的意识流来说，当我看到近期某一个日记的日期标题的时候，我大概率能够回想起来这一天我为什么要创建一个日记，但是当我看到茫茫多的日期标题的时候，我反而不知道这些天我做了什么。。这是Logseq给我带来的体验不好的一个方面，**虽然我可以通过全局搜索来解决这个问题，但是我仍然不想看到茫茫多的空日记文件，我觉得这种侵入式的做法不是适用于所有人**。

另外还可以举个例子，就是Logseq的界面设计还是太粗糙了，比如删除页面的提示框，简直像是上古时代的灰白框，格式不规整，而且在不同的删除提示中，删除按钮的位置也不一样：

![Delete empty pages](./delete-1.png '删除空页面的提示框')

![Delete a journal](./delete-2.png '删除日记的提示框')

类似这样粗糙的东西还有很多，这也是体验不好的另一方面。

所以借着Logseq很长时间没更新的这个契机，我下载了Obsidian并尝试了一下，使用下来我感觉非常不错，界面简洁但功能完整，跟Logseq所携带的功能基本一致，并且占用的内存也不大（Logseq是基于Electron的，所以占用的内存还是多一些的），所以我决定继续试试。不过我没搜索到什么可靠的迁移工具，所以之前在Logseq上面记录的东西目前还没有完全搬到Obsidian上面，但是我觉得也不太需要了，以后用到什么再搬吧。

后来我又看到了一篇文章：[Logseq Migration Journey: Challenges, Delays, and Hopes](https://www.solanky.dev/p/logseq-migration-journey-challenges-delays-and-hopes)，看完之后我觉得和我目前的想法基本一致，Logseq目前可以说是在同类产品里落后了很多了。Logseq在我看来最缺乏的一点是没有和社区进行及时地沟通，比如DB version都是在他们开发了一段时间之后我才了解到的，并且官方对于新版本的说明也是非常简约，我想他们应该去专门招聘一名市场人员来完成这些事情，而不是彻底专注在开发上，专注固然很好，但是外界的声音也很重要。**对于做产品来说，很多事情之间都需要相互平衡**。

不过我仍然还是希望他们能够做好的，因为Logseq确实在知识管理上帮助了我很多，而且我之前也为Logseq贡献了[很多的改进](https://github.com/logseq/logseq/pulls?q=sort%3Aupdated-desc+is%3Apr+author%3Ag1eny0ung+is%3Aclosed)，总体上说是有一定的感情了，包括我也开发了一个[Logseq的主题](https://github.com/g1eny0ung/logseq-github-theme)。未来等DB version正式推出之后，我再尝试一下吧。
