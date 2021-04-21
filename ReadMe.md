# 実践的な制御設計とその理論
# 概要


本コンテンツは、実例を通して制御器を設計することを紹介し、制御設計手法及び理論を効率よく学べるようにしたコンテンツである。各例題を読みながらモデルやスクリプトを順番に実行し、結果を逐次確認することができる。


# 必要なツールボックス

   -  MATLAB® 
   -  Simulink® 
   -  Stateflow® 
   -  Control System Toolbox™ 
   -  Simulink Control Design™ 

# コンテンツの使い方
### 1. プロジェクトを起動する


最初に、「Control_Design_and_Theory.prj」ファイルをダブルクリックして起動する。




![image_0.png](ReadMe_images/image_0.png)


### 2. 目次ファイルを読み進める


プロジェクトを起動すると、自動的に目次ファイル「control_workflow_index.mlx」が起動する。この資料を読み進め、リンク先のファイルを開いて読み、モデル実行していく。


# ライブスクリプトの使い方


本コンテンツでは、ライブスクリプトをベースに説明を行っている。本コンテンツを読み進めるのに当たって必要なライブスクリプトの操作方法について、本セクションにて説明する。


### セクション


ライブスクリプトには、セクション区切りが存在している。これは、ファイルの部分ごとに順番に実行し、一つずつ結果を確かめながら進むことができるようにするためである。




選択されたセクションは以下のように青色になっている。




![image_1.png](ReadMe_images/image_1.png)




この状態で、キーボードで"Ctrl + Enter"を入力すると、そのセクションのみを実行することができる。また、"Ctrl + Shift + Enter"で、セクションを実行し、かつその次のセクションを選択状態にすることができる。


### コントロール


一部のライブスクリプトでは、「コントロール」という機能を用いて、ユーザーフレンドリーな実行環境を実現させている。




例えば以下のセクションでは、「編集フィールド」を用いて、入力された数値を表示するという操作を自動化している。試しに、編集フィールド内の数値を変更し、"Enter"を入力、または別の場所にカーソルを移動させてみること。セクションが自動的に実行され、表示される数字が変化することがわかる。



```matlab:Code
disp(1);
```


```text:Output
     1
```

  


*Copyright 2021 The MathWorks, Inc.*


