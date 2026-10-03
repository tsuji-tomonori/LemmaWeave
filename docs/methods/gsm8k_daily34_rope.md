# 結束損失を含むロープ本数を求める

6階分60フィートへ、20フィートのロープを結ぶ際の25%損失を反映して本数を求める。

**取得済み固定GSM8Kの1問。**

- 参照解と同じく購入する各20フィート片の25%が結束で失われ、有効長15フィートになる解釈を明示する。

## rope_required：必要な長さを求める

条件：1階10フィートを6階分下ろす。

根拠：

得られること：60フィート必要。

既習の根拠：6×10を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.rope_required`。

## rope_loss：1本当たりの損失を求める

条件：20フィートの25%を結束時に失うと解釈する。

根拠：

得られること：損失は5フィート。

既習の根拠：20÷4を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.rope_loss`。

## rope_usable_piece：1本の有効長を求める

条件：20フィートから5フィート失う。

根拠：

得られること：1本の有効長は15フィート。

既習の根拠：20−5を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.rope_usable_piece`。

## rope_pieces：必要本数を求める

条件：60フィートを15フィートずつの有効長で賄う。

根拠：

得られること：4本必要。

既習の根拠：60÷15を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.rope_pieces`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913C.rope_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
