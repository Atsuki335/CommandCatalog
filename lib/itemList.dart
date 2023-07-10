import 'catalogPage.dart';
import 'package:flutter/material.dart';
import 'main.dart';

//リストビューの中身
class Inside {
  final String itemsUp;
  final String itemsDown;

  Inside(this.itemsUp, this.itemsDown);
}

final pokemonModels = [
  Inside('echo<String>', '画面に文字を出力'),
  Inside('echo<String> > <File>', '文字を含むファイルを作成'),
  Inside('echo<String> >>\n　　　　　　　　<File>', '文字をファイルに追記'),
  Inside('cat<File>', 'ファイルの中身を画面に表示'),
  Inside('man<command>', 'コマンドのマニュアルページを表示'),
  Inside('(man ショートカット)', '　　　　↓　↓　↓'),
  Inside('①control+C', '動作に困ったときに脱出できる'),
  Inside('②control+A', '入力行の冒頭に移動'),
  Inside('③control+E', '入力行の末尾に移動'),
  Inside('④control+U', '入力行の内容を全て削除'),
  Inside('⑤Option+クリック', 'クリックした場所に移動'),
  Inside('⑥clear or control+L', '画面の内容を消削除'),
  Inside('⑦exit or control+D', 'ターミナルを終了'),
];

final bookModels = [
  Inside('diff<File1><File2>', 'ファイル１と２の相違点を表示'),
  Inside('ls', 'ファイルやディレクトリのリストを表示'),
  Inside('ls -l', 'ロングフォームで表示'),
  Inside('ls -rtl', '最終更新時刻(t)の逆順(r)でロングフォーム(l)表示'),
  Inside('ls -a', '隠しファイル/ディレクトリも全て表示'),
  Inside('<command> *<String>', '文字を含むファイルを実行'),
  Inside('touch<File>', '空のファイルを作成'),
  Inside('mkdir<directory>', '空のディレクトリを作成'),
  Inside('mv<old File>\n　　　　　　<new File>', 'ファイル(ディレクトリ)名を変更'),
  Inside('cp<old File>\n　　　　　　<new File>', '旧を新にコピー'),
  Inside('rm<File>', 'ファイルを削除'),
  Inside('rm -f<File>', 'ファイルを確認なしで強制削除'),
  Inside('rmdir<directory>', 'ディレクトリを削除'),
  Inside('which<プログラム>', 'プログラムがコマンドラインで使える状態にあるか調べる'),
  Inside('curl -OL<おおきいFile>', '大きいファイルをダウンロードする'),
];

final rabbitModels = [
  Inside('!!', '直前のコマンドを再実行'),
  Inside('!<String>', 'その文字で始まるコマンドのうち最後に実行したものを再実行'),
  Inside('!<number>', 'コマンド履歴のn番目にあるコマンドを実行'),
  Inside('cotrol+R→<command>', 'コマンド履歴を検索、修正できる'),
  Inside('head<File>', 'ファイル内最初の１０行を表示'),
  Inside('tail<File>', 'ファイル内最後の１０行を表示'),
  Inside('wc<File>', '行数、単語数、バイト数を表示'),
  Inside('<command1>|<command2>', '左の結果を右で実行'),
  Inside('less<File>', 'ファイル内を表示。スクロールできる'),
  Inside('(less ショートカット)', '　　　　↓　↓　↓'),
  Inside('①スペース or\n　　　　　　control+F', '１ページ進む'),
  Inside('②control+B', '１ページ戻る'),
  Inside('③　G', 'ファイルの末尾にジャンプ'),
  Inside('④<numbers+G>', 'ファイルの指定行にジャンプ'),
  Inside('⑤/<String>', '文字を検索'),
  Inside('⑥　n', '次の検索結果にジャンプ'),
  Inside('⑦　N', '一つ前の検索結果にジャンプ'),
  Inside('⑧　q', '終了する'),
  Inside('grep<String><File>', 'その文字がある行だけを表示'),
  Inside('ps aux', 'プロセスリストを表示'),
  Inside('(プロセスリスト)', '一番左の数字羅列がプロセスid(pid)'),
  Inside('top', 'プロセスリストを動的に並べ替えて表示'),
  Inside('kill -<level><pid>', 'プロセスを終了させる(終了コードは-15)'),
  Inside('pkill-<level>-f<name>', '名前が一致するプロセスを終了させる'),
  Inside('history', '特定のターミナルシェルで用いたコマンドの履歴を表示')
];

final foodModels = [
  Inside('sudo<command>', 'ユーザー権限が必要なファイルに対して実行'),
  Inside('cd (~)', 'ホームディレクトリに移動'),
  Inside('cd <directory>', '指定のディレクトリに移動'),
  Inside('cd -', '直前のディレクトリに戻る'),
  Inside('cd ..', '現在のディレクトリ階層をひとつ上に進む'),
  Inside('pwd', '今いるディレクトリ(カレントディレクトリ)を表示'),
  Inside('<command> . ', 'カレントディレクトリにcommandを実行'),
  Inside('find . -name<File>', 'カレントディレクトリ〜サブの中で検索'),
  Inside('<command> && 　　　<command>', '実行→成功→実行を繰返す'),
  // Inside('', ''),
  // Inside('', ''),
  // Inside('', ''),
  // Inside('', ''),
  // Inside('', ''),
  // Inside('', ''),
  // Inside('', ''),
  // Inside('', ''),
  // Inside('', ''),
  // Inside('', ''),
];
