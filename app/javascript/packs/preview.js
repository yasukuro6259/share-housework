if (document.URL.match( /new/ ) || document.URL.match( /edit/ )) {
  document.addEventListener('DOMContentLoaded', function(){
    //id=image-listの要素を取得し、変数ImageListに代入
    const ImageList = document.getElementById('image-list');

    const createImageHTML = (blob) => {
       // 画像を表示するためのdiv要素を生成し、変数imageElementに代入
      const imageElement = document.createElement('div');
      // 表示する画像をimg要素を作成し、変数bolbImageに代入
      const blobImage = document.createElement('img');
      //上記img要素にsrc属性を追加
      blobImage.setAttribute('src', blob);

      //上記で作成したdiv要素の子要素としてimg要素を扱う。
      imageElement.appendChild(blobImage);
      //idがimage-listの要素に上記で作成したdiv要素を子要素とする。
      ImageList.appendChild(imageElement);
    };
    // id=task_imageは自動で付与される？ 該当IDを持つ要素で値が変化した時にイベントが起きる
    document.getElementById('task-image').addEventListener('change', function(e){
      // 画像が表示されている場合のみ、すでに存在している画像を削除する
      const imageContent = document.querySelector('img');
      if (imageContent){
        imageContent.remove();
      }

      const file = e.target.files[0];
      const blob = window.URL.createObjectURL(file);

      createImageHTML(blob);
    });
  });
}