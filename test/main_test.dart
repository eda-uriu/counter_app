import 'package:counter_app/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Counter 単体テスト', () {
    test('Initial value(valueの初期値) -- 0', () {
      // Arrange
      // Counterクラスのインスタンスを作成
      final counter = Counter();

      // Assert
      // valueの初期値が0であることを確認
    });

    test('incrementメソッド', () {
      // Arrange
      // Counterクラスのインスタンスを作成
      final counter = Counter();

      // Assert (事前の確認)
      // valueの初期値が0であることを確認

      // Act
      // incrementメソッドを実行

      // Assert
      // 値が+1されていること (incrementメソッドが正常作動していること)を確認
    });

    test('decrementメソッド', () {
      // Arrange
      // Counterクラスのインスタンスを作成
      final counter = Counter();

      // Assert (事前の確認)
      // incrementメソッドを実行して、valueの値が1になっていることを確認

      // Act
      // decrementメソッドを実行

      // Assert
      // 値が-1されていること (decrementメソッドが正常作動していること)を確認
    });

    test('decrementメソッド -- valueが0の場合', () {
      // Arrange
      // Counterクラスのインスタンスを作成
      final counter = Counter();

      // Assert (事前の確認)
      // valueの初期値が0であることを確認

      // Act
      // decrementメソッドを実行

      // Assert
      // valueが0のままであることを確認
    });

    group('clearメソッド', () {
      // Arrange
      // Counterクラスのインスタンスを作成
      final counter = Counter();

      test('clearメソッド --初期に呼び出した場合', () {
        // Assert (事前の確認)
        // valueの初期値が0であることを確認

        // Act
        // clearメソッドを実行

        // Assert
        // valueの値がクリアされていることを確認
      });

      test('clearメソッド --incrementメソッド実行後に呼び出した場合', () {
        // Act / Assert (事前の確認)
        // incrementメソッドを実行して、valueの値が1になっていることを確認

        // Act
        // clearメソッドを実行

        // Assert
        // valueの値がクリアされていることを確認
      });

      test('clearメソッド --decrementメソッド実行後に呼び出した場合', () {
        // Act / Assert (事前の確認)
        // decrementメソッドを実行して、valueの値が0になっていることを確認

        // Act
        // clearメソッドを実行

        // Assert
        // valueの値がクリアされていることを確認
      });

      test('clearメソッド --increment / decrementメソッド実行後に呼び出した場合', () {
        // Act / Assert (事前の確認)
        // incrementメソッドを2回実行して、valueの値が2になっていることを確認

        // Act / Assert (事前の確認)
        // decrementメソッドを実行して、valueの値が1になっていることを確認

        // Act
        // clearメソッドを実行

        // Assert
        // valueの値がクリアされていることを確認
        expect(counter.value, 0);
      });
    });
  });
}
