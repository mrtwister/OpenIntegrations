---
sidebar_position: 1
---

# Опубликовать объект
Публикует объект в публичный доступ (делает его доступным по ссылке)

*Функция ОпубликоватьОбъект(Знач Токен, Знач Путь) Экспорт*

  | Параметр | Тип | Назначение |
  |-|-|-|
  | Токен | Строка | Токен доступа |
  | Путь | Строка | Путь к объекту на Диске |
  
  Вовзращаемое значение: Соответствие - сериализованный JSON ответа от Yandex

```bsl title="Пример кода"
			
    Токен = "y0_AgAAAABdylaOAA...";   
    Путь  = "/Альпака.png"
    Ответ = OPI_YandexDisk.ОпубликоватьОбъект(Токен, Путь);  //Соответствие; Ссылка на файл - Ответ["public_url"]
    Ответ = OPI_Инструменты.JSONСтрокой(Ответ);              //Строка

```

![Результат](img/1.png)


```json title="Результат"

{
 "md5": "8d7bf7d7ee61113f9044f3a28496e458",
 "sha256": "f7607461b40164d5064d1d5085cbe1e94ecb1326e7ff8db857931b2ccd14b7f8",
 "revision": 1707475863191537,
 "media_type": "image",
 "file": "https://downloader.disk.yandex.ru/disk/8124011f47d668473ec5556e7aa03ed0c825d2bce0777c5f268ab3b133fa366b/65c63bd7/gwThwhLBKYvLhQCNnqAHis09lIY3JS6kMxocI4drJ-uZelc6zzgdG8REX8G87z9KG45VhprQarmCtb_OEKbojQ%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0.png&disposition=attachment&hash=&limit=0&content_type=image%2Fpng&owner_uid=1573541518&fsize=440431&hid=0e9b208e1aea0dbd58b4b43ccdc3ad5a&media_type=image&tknv=v2&etag=8d7bf7d7ee61113f9044f3a28496e458",
 "modified": "2024-02-09T10:50:41+00:00",
 "sizes": [
  {
   "name": "ORIGINAL",
   "url": "https://downloader.disk.yandex.ru/disk/df3f57d6fee627517405de91b959bc7585d9f1ca0afbba833a216be01699d04f/65c63bd7/gwThwhLBKYvLhQCNnqAHis09lIY3JS6kMxocI4drJ-uZelc6zzgdG8REX8G87z9KG45VhprQarmCtb_OEKbojQ%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0.png&disposition=inline&hash=&limit=0&content_type=image%2Fpng&owner_uid=1573541518&fsize=440431&hid=0e9b208e1aea0dbd58b4b43ccdc3ad5a&media_type=image&tknv=v2&etag=8d7bf7d7ee61113f9044f3a28496e458"
  },
  {
   "name": "DEFAULT",
   "url": "https://downloader.disk.yandex.ru/preview/8d337cd1c2b4da544bff6d006bed0b0b7c8defb109da3fa71920174d9c757d52/inf/GyInrPTZYscNNkZ1el2hXGYA_rTREbdNcSWvdp6e5r4TWFuEVaJ-PEvHuuMV9iIpDSzaDO4ey5V7KB1TSxCHmA%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0.png&disposition=inline&hash=&limit=0&content_type=image%2Fpng&owner_uid=1573541518&tknv=v2"
  },
  {
   "name": "XXXS",
   "url": "https://downloader.disk.yandex.ru/preview/8d337cd1c2b4da544bff6d006bed0b0b7c8defb109da3fa71920174d9c757d52/inf/GyInrPTZYscNNkZ1el2hXGYA_rTREbdNcSWvdp6e5r4TWFuEVaJ-PEvHuuMV9iIpDSzaDO4ey5V7KB1TSxCHmA%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0.png&disposition=inline&hash=&limit=0&content_type=image%2Fpng&owner_uid=1573541518&tknv=v2&size=XXXS&crop=0"
  },
  {
   "name": "XXS",
   "url": "https://downloader.disk.yandex.ru/preview/8d337cd1c2b4da544bff6d006bed0b0b7c8defb109da3fa71920174d9c757d52/inf/GyInrPTZYscNNkZ1el2hXGYA_rTREbdNcSWvdp6e5r4TWFuEVaJ-PEvHuuMV9iIpDSzaDO4ey5V7KB1TSxCHmA%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0.png&disposition=inline&hash=&limit=0&content_type=image%2Fpng&owner_uid=1573541518&tknv=v2&size=XXS&crop=0"
  },
  {
   "name": "XS",
   "url": "https://downloader.disk.yandex.ru/preview/8d337cd1c2b4da544bff6d006bed0b0b7c8defb109da3fa71920174d9c757d52/inf/GyInrPTZYscNNkZ1el2hXGYA_rTREbdNcSWvdp6e5r4TWFuEVaJ-PEvHuuMV9iIpDSzaDO4ey5V7KB1TSxCHmA%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0.png&disposition=inline&hash=&limit=0&content_type=image%2Fpng&owner_uid=1573541518&tknv=v2&size=XS&crop=0"
  },
  {
   "name": "S",
   "url": "https://downloader.disk.yandex.ru/preview/8d337cd1c2b4da544bff6d006bed0b0b7c8defb109da3fa71920174d9c757d52/inf/GyInrPTZYscNNkZ1el2hXGYA_rTREbdNcSWvdp6e5r4TWFuEVaJ-PEvHuuMV9iIpDSzaDO4ey5V7KB1TSxCHmA%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0.png&disposition=inline&hash=&limit=0&content_type=image%2Fpng&owner_uid=1573541518&tknv=v2&size=S&crop=0"
  },
  {
   "name": "M",
   "url": "https://downloader.disk.yandex.ru/preview/8d337cd1c2b4da544bff6d006bed0b0b7c8defb109da3fa71920174d9c757d52/inf/GyInrPTZYscNNkZ1el2hXGYA_rTREbdNcSWvdp6e5r4TWFuEVaJ-PEvHuuMV9iIpDSzaDO4ey5V7KB1TSxCHmA%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0.png&disposition=inline&hash=&limit=0&content_type=image%2Fpng&owner_uid=1573541518&tknv=v2&size=M&crop=0"
  },
  {
   "name": "L",
   "url": "https://downloader.disk.yandex.ru/preview/8d337cd1c2b4da544bff6d006bed0b0b7c8defb109da3fa71920174d9c757d52/inf/GyInrPTZYscNNkZ1el2hXGYA_rTREbdNcSWvdp6e5r4TWFuEVaJ-PEvHuuMV9iIpDSzaDO4ey5V7KB1TSxCHmA%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0.png&disposition=inline&hash=&limit=0&content_type=image%2Fpng&owner_uid=1573541518&tknv=v2&size=L&crop=0"
  },
  {
   "name": "XL",
   "url": "https://downloader.disk.yandex.ru/preview/8d337cd1c2b4da544bff6d006bed0b0b7c8defb109da3fa71920174d9c757d52/inf/GyInrPTZYscNNkZ1el2hXGYA_rTREbdNcSWvdp6e5r4TWFuEVaJ-PEvHuuMV9iIpDSzaDO4ey5V7KB1TSxCHmA%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0.png&disposition=inline&hash=&limit=0&content_type=image%2Fpng&owner_uid=1573541518&tknv=v2&size=XL&crop=0"
  },
  {
   "name": "XXL",
   "url": "https://downloader.disk.yandex.ru/preview/8d337cd1c2b4da544bff6d006bed0b0b7c8defb109da3fa71920174d9c757d52/inf/GyInrPTZYscNNkZ1el2hXGYA_rTREbdNcSWvdp6e5r4TWFuEVaJ-PEvHuuMV9iIpDSzaDO4ey5V7KB1TSxCHmA%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0.png&disposition=inline&hash=&limit=0&content_type=image%2Fpng&owner_uid=1573541518&tknv=v2&size=XXL&crop=0"
  },
  {
   "name": "XXXL",
   "url": "https://downloader.disk.yandex.ru/preview/8d337cd1c2b4da544bff6d006bed0b0b7c8defb109da3fa71920174d9c757d52/inf/GyInrPTZYscNNkZ1el2hXGYA_rTREbdNcSWvdp6e5r4TWFuEVaJ-PEvHuuMV9iIpDSzaDO4ey5V7KB1TSxCHmA%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0.png&disposition=inline&hash=&limit=0&content_type=image%2Fpng&owner_uid=1573541518&tknv=v2&size=XXXL&crop=0"
  },
  {
   "name": "C",
   "url": "https://downloader.disk.yandex.ru/preview/8d337cd1c2b4da544bff6d006bed0b0b7c8defb109da3fa71920174d9c757d52/inf/GyInrPTZYscNNkZ1el2hXGYA_rTREbdNcSWvdp6e5r4TWFuEVaJ-PEvHuuMV9iIpDSzaDO4ey5V7KB1TSxCHmA%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0.png&disposition=inline&hash=&limit=0&content_type=image%2Fpng&owner_uid=1573541518&tknv=v2&size=S&crop=0"
  }
 ],
 "resource_id": "1573541518:bda4781175def7529059950870dd72cd70beef0ff592e7102e731fd2cb631ec3",
 "preview": "https://downloader.disk.yandex.ru/preview/8d337cd1c2b4da544bff6d006bed0b0b7c8defb109da3fa71920174d9c757d52/inf/GyInrPTZYscNNkZ1el2hXGYA_rTREbdNcSWvdp6e5r4TWFuEVaJ-PEvHuuMV9iIpDSzaDO4ey5V7KB1TSxCHmA%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0.png&disposition=inline&hash=&limit=0&content_type=image%2Fpng&owner_uid=1573541518&tknv=v2&size=S&crop=0",
 "size": 440431,
 "created": "2024-02-09T10:50:41+00:00",
 "type": "file",
 "name": "Альпака.png",
 "exif": {},
 "public_url": "https://yadi.sk/i/txwzakUVtxgjoQ",
 "public_key": "O+tgG9OfyuyJgwBRM+BJVaHN3Kg0nH8yi5xbEKU3m+d8vVVsZCwR+LHB8oeN+wcTq/J6bpmRyOJonT3VoXnDag==",
 "path": "disk:/Альпака.png",
 "antivirus_status": "clean",
 "mime_type": "image/png",
 "comment_ids": {
  "public_resource": "1573541518:bda4781175def7529059950870dd72cd70beef0ff592e7102e731fd2cb631ec3",
  "private_resource": "1573541518:bda4781175def7529059950870dd72cd70beef0ff592e7102e731fd2cb631ec3"
 }
}

```