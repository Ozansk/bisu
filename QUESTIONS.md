# Sorular

## 1.soru

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## 2.soru

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## 3.soru

Express içerisinde bulunan set methodu ile bir değişkene eğer atayarak global olarak kullanabiliriz. Eğer bir classı global olarak kullanmak istiyorsak, export eddebiliriz ve require methodu ile başka bir yeren ulaşabiliriz.

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
