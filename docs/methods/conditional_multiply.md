# 条件付き確率の定義と乗法公式

P(A∩B)=P(A)P(B|A)。P(B|A)はAの中でBに属する割合。

条件：P(A)>0。独立性は不要。

使う場面：集団の割合と、その集団内の割合が与えられたとき。

## 根拠と分解

- A∩Bの確率をx、Aの確率をaと置く。
- Aに条件を限った割合はx/aと定義する。a>0なので両辺にaを掛け、x=aP(B|A)を得る。

## Lean宣言

- `LemmaWeave.Lemmas.FiniteProbability.givenA`
- `LemmaWeave.Lemmas.FiniteProbability.multiply_given`

## 前提と未展開箇所

- 有理数の四則演算・一次式の変形はユーザー指定の中学既習として扱う。

## 使用例

- [卵の色で場合を分け、条件付き確率を使う](probability_eggs.md)
