# FiveM Template - Svelte + TailwindCSS

Bu proje, **FiveM NUI geliştirme** sücrecini kolaylaştırmak için hazırlanmış bir **Svelte + TailwindCSS** şablonudur. `vite` kullanılarak hızlı geliştirme ve build alma imkanı sağlar.

> 🌟 Amacı: Frontend geliştirmeyi hızlı ve modüler hale getirmek.
>
> 🛠️ Teknolojiler: SvelteKit, TailwindCSS v4, Vite, TypeScript

---

## 🚀 Başlangıç

### 1. Depoyu klonla

```bash
git clone https://github.com/harbiyelidev/fivem-template-svelte.git
cd fivem-template-svelte
```

### 2. Gerekli paketleri kur

```bash
npm install
```

---

## 🧪 Geliştirme Ortamında Çalıştırma (NUI ile test)

Proje, FiveM NUI ile test edilmek üzere yapılandırılmıştır. Ancak Svelte bileşenlerini izole olarak geliştirmek istersen:

```bash
npm run dev
```

Bu komut bir geliştirme sunucusu başlatır. Tarayıcıda otomatik olarak açılır (`http://localhost:5173` gibi).

> ⚠️ Uyarı: Yaptığınız değişiklikler direkt olarak `NUI` üzerinde gözükmeyecektir. Bunun için build olmanız gerekmektedir.

---

## 🛠️ FiveM'de Kullanmak İçin Build Alma

FiveM içerisinde NUI olarak kullanmak için aşağıdaki adımları takip et:

### 1. Build al

```bash
npm run build
```

Bu işlem `build/` klasörünü oluşturur ve optimize edilmiş dosyaları içine yerleştirir.

---

## 📦 Build Scriptleri

| Komut             | Açıklama                                  |
| ----------------- | ----------------------------------------- |
| `npm run dev`     | Geliştirme sunucusunu başlatır            |
| `npm run build`   | Üretim (prod) için optimize build alır    |
| `npm run preview` | Build sonrası ön izleme sunucusu başlatır |

---

## 🔍 Ekstra Bilgi

* TailwindCSS v4 ve JIT özelliği aktiftir.
* `src/lib/nui.ts` dosyası, `fetch` üzerinden Lua <-> JS iletişimini sağlar.
* `src/stores/` dizini içinde global state yönetimi için Svelte store'lar vardır.

---

## 🤝 Katkı

Katkıda bulunmak istersen, fork edip pull request gönderebilirsin. Hataları "Issues" kısmından bildirebilirsin.

---

## 📟 Lisans

MIT © [harbiyelidev](https://github.com/harbiyelidev)
