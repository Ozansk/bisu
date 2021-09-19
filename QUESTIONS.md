# Sorular

## 1.soru

Asynchronous durumlarda callback kullanabiliriz ve bu iç içe bir durum oluşturuğuna çok fazla karışıklık oluştuğunu gözlemleriz. Bu duruma callback hell adını veriyoruz. Bu durumdan kurtulmak için async/await kullanabiliriz. Bu sayede karışık bir durumdan, daha kolay takip edilebilir bir duruma geçiş yapabiliriz. Fonksiyon başına async ekliyoruz ve içerisine await ile beklenmesi gereken processi belirtebiliyoruz.

## 2.soru

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## 3.soru

Express içerisinde bulunan set methodu ile bir değişkene eğer atayarak global olarak kullanabiliriz. Eğer bir classı global olarak kullanmak istiyorsak, export edebiliriz ve require methodu ile başka bir yerden ulaşabiliriz.

## 4.soru

İlk baştaki kodda this dışarıya ulaşamıyor. Bunu sağlamak için Promise içerisini arrow function haline çeviriyoruz. Böylece this artık parent'ı işaret edecek ve func2'ye ulaşabilecektir.

```
let parent = {
    func2: function () {
        return new Promise(function (resolve, reject) {
            return resolve(1);
        });
    },
    func1: function () {
        return new Promise((resolve, reject) => {
            this.func2().then((count) => {
                console.log(count + 1);
            });
        });
    }
}
parent.func1();

```
