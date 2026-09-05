# 平方完成

a*x²−2*a*h*x+c = a*(x−h)²+(c−a*h²)。

条件：a,h,c,xは実数。正値条件は不要。

使う場面：二次式を頂点の形に直す。

## 根拠と分解

- (x−h)²を展開する。
- 分配法則で係数をまとめ、両辺が一致することを示す。

## Lean宣言

- `LemmaWeave.Lemmas.QuadraticMethods.completing_square`

## 前提と未展開箇所

- 実数の環構造、分配法則、平方の定義。

## 使用例

- [平方完成と端点・頂点から二次関数の極値を示す](quadratic_extrema.md)
