# 地震ごとの倒壊予測と実数の条件不足を分ける

初回4棟が倒壊し、専門家は後続地震ごとに前回の2倍が倒壊すると予測した。さらに3回後の累計を問う。

**取得済み固定GSM8Kの1問。原文をLLMが個別に解答し、他コレクションへ混ぜない。**

- 専門家の予測が実現し、各回で別の建物が倒壊するなら累計60棟。予測という事実だけでは実際の後続倒壊数は決まらない。

## earthquake_second：第2回の予測

条件：初回4棟の2倍が倒壊する予測が実現する。

根拠：

得られること：第2回は8棟。

既習の根拠：中学校までの倍と乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.earthquake_second`。

## earthquake_third：第3回の予測

条件：第2回8棟の2倍が倒壊する予測が実現する。

根拠：

得られること：第3回は16棟。

既習の根拠：中学校までの倍と乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.earthquake_third`。

## earthquake_fourth：第4回の予測

条件：第3回16棟の2倍が倒壊する予測が実現する。

根拠：

得られること：第4回は32棟。

既習の根拠：中学校までの倍と乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.earthquake_fourth`。

## earthquake_predicted_total：予測実現時の累計

条件：各回の建物が別で、4、8、16、32棟の予測が実現する。

根拠：

得られること：累計は4+8+16+32=60棟。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.earthquake_predicted_total`。

## earthquake_actual_examples：実数が一意でない反例

条件：予測の事実だけを保ち、後続実数を0,0,0または8,16,32とする。

根拠：

得られること：実際の累計は4棟にも60棟にもなり得るため、原文だけでは一意でない。

既習の根拠：中学校までの反例による論証。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.earthquake_actual_examples`。

## earthquake_exists：条件付きモデルの充足

条件：第2〜4回を8、16、32棟、累計60棟とする。

根拠：

得られること：予測実現と別建物という追加条件下の全関係を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.earthquake_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907D.earthquake_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
