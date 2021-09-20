# Sorular

## 1.soru

Asynchronous durumlarda callback kullanabiliriz ve bu iç içe bir durum oluşturuğuna çok fazla karışıklık oluştuğunu gözlemleriz. Bu duruma callback hell adını veriyoruz. Bu durumdan kurtulmak için async/await kullanabiliriz. Bu sayede karışık bir durumdan, daha kolay takip edilebilir bir duruma geçiş yapabiliriz. Fonksiyon başına async ekliyoruz ve içerisine await ile beklenmesi gereken processi belirtebiliyoruz.

## 2.soru

Event queue üzerinde gelen istekler tutuluyor. Event loop burada istek olup olmadığını kontrol ediyor. Eğer isteğe ulaşırsa ve istek herhangi bir blocking işlemi oluşturmuyorsa işlemi gerçekleştirir, cevabı oluşturur ve geri döner. Eğer blocking işlemi oluşuyorsa bu uruma yeni bir thread'i bu göreve atar. 

## 3.soru

Express içerisinde bulunan set methodu ile bir değişkene değer atayarak global olarak kullanabiliriz. Eğer bir classı global olarak kullanmak istiyorsak, export edebiliriz ve require methodu ile başka bir yerden ulaşabiliriz. Başına global koyarak(global.globalVariable) da bu işlemi gerçekleştirebiliriz.

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
