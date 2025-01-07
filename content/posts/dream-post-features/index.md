---
title: "Hugo Theme Dream: Post Page Features"
date: 2024-08-28T11:15:08+08:00
lastmod: 2024-08-28T11:15:08+08:00
avatar: /me/yy.jpg
cover: dream-post-features.png
images:
  - dream-post-features.png
categories:
  - English
---

A demo post to show the features of a post page in Hugo Theme Dream.

<!--more-->

View <https://g1en.site/hugo-theme-dream/post-page> for more details.

## Alerts

> [!NOTE]
> Useful information that users should know, even when skimming content.

> [!TIP]
> Helpful advice for doing things better or more easily.

> [!IMPORTANT]
> Key information users need to know to achieve their goal.

> [!WARNING]
> Urgent info that needs immediate user attention to avoid problems.

> [!CAUTION]
> Advises about risks or negative outcomes of certain actions.

### Custom Alert Title

> [!NOTE]
> The default alert title is changed to "Hello".
{text="Hello"}

## Mermaid Diagrams

```mermaid
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
```

## Mathematics

```math
This is an inline \(a^*=x-b^*\) equation.
```

```math
These are block equations:

\[
\begin{aligned}
KL(\hat{y} || y) &= \sum_{c=1}^{M}\hat{y}_c \log{\frac{\hat{y}_c}{y_c}} \\
JS(\hat{y} || y) &= \frac{1}{2}(KL(y||\frac{y+\hat{y}}{2}) + KL(\hat{y}||\frac{y+\hat{y}}{2}))
\end{aligned}
\]

These are also block equations:

$$a^*=x-b^*$$

$$ a^*=x-b^* $$

$$
a^*=x-b^*
$$
```
