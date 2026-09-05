# 左端点による上界

l≤x≤uなら a*(x−h)²+k ≤ a*(l−h)²+k。

条件：実数パラメータ、0≤a、u+l≤2*h、l≤x≤u。

使う場面：頂点より左側への距離が左端点で最大になる区間の上界を示す。

## 根拠と分解

- 左端点での値との差をa*(x−l)*(x+l−2*h)に因数分解する。
- x−l≥0、x+l−2*h≤0から差≤0を示す。

## Lean宣言

- `LemmaWeave.Lemmas.QuadraticMethods.upper_bound_at_left_endpoint`

## 前提と未展開箇所

- 因数分解、積の符号、順序の推移性。条件なしで全区間に適用しない。

## 使用例

- [平方完成と端点・頂点から二次関数の極値を示す](quadratic_extrema.md)
