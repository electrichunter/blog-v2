-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 10 Oca 2024, 12:20:41
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `proje`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `admin_yetki` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`, `admin_yetki`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', 1),
(2, '', '', 0),
(3, 'log', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', 0),
(4, 'ömer', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', 0),
(5, 'admin2', '1c6637a8f2e1f75e06ff9984894d6bd16a3a36a9', 0),
(6, 'admim3', '43814346e21444aaf4f70841bf7ed5ae93f55a9d', 0),
(7, 'admin5', 'cfa1150f1787186742a9a884b73a43d8cf219f9b', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comments`
--

CREATE TABLE `comments` (
  `id` int(100) NOT NULL,
  `post_id` int(100) NOT NULL,
  `admin_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `admin_id`, `user_id`, `user_name`, `comment`, `date`) VALUES
(4, 5, 4, 2, 'omer', 'sa', '2024-01-09'),
(5, 5, 4, 2, 'omer', 'as\r\n', '2024-01-09');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `likes`
--

CREATE TABLE `likes` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `admin_id` int(100) NOT NULL,
  `post_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `admin_id`, `post_id`) VALUES
(1, 2, 4, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `posts`
--

CREATE TABLE `posts` (
  `id` int(100) NOT NULL,
  `admin_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `category` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `posts`
--

INSERT INTO `posts` (`id`, `admin_id`, `name`, `title`, `content`, `category`, `image`, `date`, `status`) VALUES
(2, 4, 'ömer', 'İnternet Hızını Artırmanın Yolları', 'Merhaba, ben Known Loop Topluluğu’ndan Ömer Faruk Uysal. Sizlere günümüzün problemlerinden internet hızını artırmanın yollarından bahsedeceğim.\r\n\r\nGünümüzde hızlı ve güvenilir internet erişimi, modern yaşamın ayrılmaz bir parçası haline geldi. Bu bağlamda, evinizdeki internet hızını artırmak ve daha akıcı bir çevrimiçi deneyim yaşamak için dikkat etmeniz gereken en önemli faktörlerden biri, modem seçimidir. Modemler, internet sağlayıcınızdan gelen sinyali kablosuz olarak evinizdeki cihazlara dağıtan hayati bileşenlerdir.\r\n\r\nİşte modem seçerken göz önünde bulundurmanız gereken önemli özellikler:\r\n\r\n    Modem tipi: ADSL, VDSL, fiber veya kablo modem gibi farklı modem tipleri vardır. İnternet sağlayıcınızın desteklediği modem tipini seçmelisiniz. Ayrıca, modem tipi internet hızınızı da belirler. Örneğin, fiber modemler kablo modemlere göre daha yüksek hızlara ulaşabilir.\r\n    Modem hızı: Modemlerin üzerinde genellikle Mbps (megabit per second) veya Gbps (gigabit per second) olarak ifade edilen bir hız değeri yazar. Bu değer, modemlerin maksimum teorik hızını gösterir. Ancak, bu değer gerçek hızınızı garantilemez. Gerçek hızınız, internet sağlayıcınızın sunduğu paket, altyapı kalitesi, mesafe, trafik yoğunluğu gibi faktörlere bağlıdır.\r\n    Modem anteni: Modemlerin üzerinde genellikle bir veya daha fazla anten bulunur. Anten sayısı ve gücü, kablosuz sinyalinizin kapsama alanını ve kalitesini etkiler. Anten sayısı arttıkça, sinyal daha fazla cihaza ulaşabilir ve daha az parazit alır. Anten gücü ise dBm (decibel milliwatt) olarak ölçülür. Anten gücü arttıkça, sinyal daha uzak mesafelere ulaşabilir ve daha az zayıflar.\r\n    Modem frekansı: Modemler genellikle 2.4 GHz veya 5 GHz frekanslarında sinyal yayarlar (6 GHz frekansında sinyal yayan cihazlar da bulunmaktadır). Bu frekanslar, kablosuz sinyalinizin bant genişliğini ve kararlılığını belirler. 2.4 GHz frekansı daha yaygın kullanılır ve daha fazla cihaz tarafından desteklenir. Ancak, bu frekansta daha fazla parazit ve tıkanıklık olabilir. 5 GHz frekansı ise daha az kullanılır ve daha az cihaz tarafından desteklenir. Ancak, bu frekansta daha az parazit ve tıkanıklık olur, bu yüzden daha yüksek bant genişliği sağlar.\r\n    Modem standardı: Modemlerin üzerinde genellikle 802.11a/b/g/n/ac/ax gibi harf kombinasyonları yazar. Bu harfler, modemlerin kullandığı kablosuz iletişim standartlarını gösterir. Standartlar arasındaki farklar, hız, güvenlik, uyumluluk gibi konularda ortaya çıkar. En yeni ve en gelişmiş standart 802.11ax veya Wi-Fi 6 olarak adlandırılır. Bu standart, diğer standartlara göre daha yüksek hız, kapasite, verimlilik ve güvenlik sunar.\r\n    Modem güvenliği: Modemlerin kablosuz ağınıza erişmek için bir şifre belirlemeniz gerekir. Bu şifre, WEP (Wired Equivalent Privacy), WPA2 (Wi-Fi Protected Access 2) veya WPA3 (Wi-Fi Protected Access 3) gibi farklı protokollerle şifrelenir. Bu protokoller arasındaki farklar, şifreleme algoritması, anahtar uzunluğu, saldırılara karşı direnç gibi konularda ortaya çıkar. En güncel ve güvenli protokol WPA3&#39;dür ve tercih etmeniz önerilir.\r\n    Modem arayüzü: Modemlerin ayarlarını yapmak için bir web arayüzüne sahiptir. Bu arayüz, modemlerin IP adresi, kullanıcı adı ve şifresi ile erişilebilir. Modem arayüzü; modemlerin hız, güvenlik, ağ adı, kanal, port yönlendirme, güncelleme gibi birçok özelliğini değiştirmenize olanak sağlar. Modem arayüzü; kullanıcı dostu, anlaşılır ve işlevsel olmalıdır.\r\n    Modem ek özellikleri: Modemlerin bazı ek özellikleri de vardır. Bunlar arasında USB portu, Ethernet portu, telefon portu, VPN (Virtual Private Network) desteği, ebeveyn kontrolü, misafir ağı, QoS (Quality of Service) gibi özellikler sayılabilir. Bu özellikler, modemlerin işlevselliğini ve kullanışlılığını artırır. Ancak, bu özelliklerin hepsine ihtiyacınız olmayabilir. İhtiyacınız olan özelliklere sahip bir modem seçmeniz daha ekonomik olabilir.\r\n\r\nBu özelliklere bakarak modem tercihinde bulunursanız hızlı ve güvenli bir internet erişimine sahip olabilir. Başka bir yazıda görüşmek üzere.\r\n\r\nİletişim:\r\n\r\nÖmer Faruk Uysal: https://github.com/electrichunter', 'technology', 'netd.jpg', '2024-01-09', 'active'),
(3, 4, 'ömer', 'Yapay Zeka Deneyimleri', 'Merhaba, ben Known Loop Topluluğundan Ömer Faruk Uysal. Bugünkü yazımda sizlere bazı yapay zekâ modelleriyle ilgili deneyimlerimden bahsedeceğim. Teknolojinin hızla ilerlemesiyle birlikte, yapay zekâ temelli uygulamalar günlük hayatımızda yaygın bir şekilde yer almaya başladığını hepimiz biliyoruz. Sizlere 3 tane AI modelinden bahsedeceğim.\r\n\r\n1-Poe By Quora\r\n\r\nYapay zekâ tabanlı sohbet robotu oldukça akıllı ve anlayışlı cevaplar veriyor. Aynı zamanda, onunla şakalaşmak ve eğlenceli diyaloglar kurmak da keyifliydi. Uygulamanın kullanıcı dostu arayüzü ve basit navigasyonu sayesinde kullanımı oldukça kolay. Ancak, zaman zaman çok spesifik veya karmaşık sorulara cevap vermede biraz zorlandığını fark ettim. Yine de genel olarak oldukça başarılı bir deneyimdi.\r\n\r\nHer ne kadar eğlenceli ve bilgilendirici olsa da Quora Poe uygulamasının bilgi güvenilirliği konusunda bazı endişelerim var. Yapay zekanın kaynakları ne kadar güvenilir ve doğru olabilir, emin değilim. Sonuç olarak, Quora Poe uygulaması, eğlenceli ve ilgi çekici bir yapay zekâ sohbet robotu deneyimi sunuyor.\r\n\r\n2-UnScreen\r\n\r\nUnScreen, harika bir video düzenleme platformu! Uzun süredir aradığım etkileyici video efektleri ve arka plan kaldırma özelliği ile tam da ihtiyacımı karşılıyor. Videolarımı düzenlemek ve sosyal medyada paylaşmak için kullandım ve sonuçlar gerçekten muhteşem oldu. Arka plan kaldırma özelliği, videoları daha profesyonel görünümlü hale getiriyor ve içerikleri ön plana çıkarıyor.\r\n\r\nUygulamanın kullanıcı dostu arayüzü, herhangi bir video düzenleme tecrübesi olmasa bile kolayca kullanmama olanak tanıdı. Efektler ve filtreler, videoları gerçekten canlandırıp görsel açıdan çekici hale getiren harika bir seçim. Ayrıca, metin ekleme özelliği sayesinde videolarıma başlık ve açıklama eklemek çok kolay oldu.\r\n\r\n3-Soundraw\r\n\r\nSoundraw, müzik yapmayı seven biri olarak keşfettiğim harika bir platform! Müzik üretimi ve besteleme konusunda deneyimli olmasam da, Soundraw sayesinde kendi müziklerimi yaratmaya başladım. Arayüzü kullanıcı dostu ve sezgisel, hemen başlamak için hiçbir zorluk yaşamadım.\r\n\r\nUygulama, çeşitli enstrüman sesleri ve ses efektleri sunuyor, böylece yaratıcılığımı sınırlamadan farklı türlerde müzikler oluşturabiliyorum. Benim için en heyecan verici özelliklerden biri, akor ilerlemeleri ve notaları otomatik olarak uyumlu hale getiren yapay zekâ destekli özelliği oldu. Bu sayede, müziğin temelleri hakkında endişelenmeden melodilere odaklanabiliyorum.\r\n\r\nSoundraw’un temel düzenleme araçları da oldukça etkileyici. Şarkılarımı düzenleyebilir, parçaları birleştirebilir ve ses seviyelerini ayarlayabiliyorum. Ayrıca, içeriğimi kaydedebilir ve kolayca paylaşabilirim. Bu, kendi müziklerimi arkadaşlarımla ve sosyal medyada paylaşmak için harika bir fırsat sunuyor.\r\n\r\nSoundraw, müzik tutkusu olan herkese şiddetle tavsiye edeceğim bir platform. Yaratıcılığınızı ortaya çıkarmak ve kendi müziğinizi oluşturmak için harika bir araç.\r\n\r\nŞimdilik benden bu kadar. Başka bir yazıda görüşmek üzere…\r\n\r\nİletişim:\r\n\r\nÖmer Faruk Uysal:\r\n\r\nhttps://github.com/electrichunter', 'technology', 'al.jpg', '2024-01-09', 'active'),
(4, 4, 'ömer', 'Siber Saldırılar', 'Siber saldırıların çeşitleri, nasıl gerçekleştirildiğine, niçin ve kimler tarafından yapıldığına bağlı olarak farklılık gösterir. Aşağıda, siber saldırıların temel üç türünü inceleyeceğiz: veri ihlali, fidye yazılımı ve hizmet dışı bırakma saldırıları.\r\n\r\nVeri ihlali, kişisel veya kurumsal verileri çalmak veya ele geçirmek amacıyla gerçekleştirilen bir siber saldırı türüdür. Bu tür saldırılar genellikle suç örgütleri, casuslar veya içeriden gelen tehditler tarafından yapılmaktadır. Hedef genellikle devlet kurumları, özel sektör şirketleri veya bireysel kullanıcılar olup, sonucunda veri kaybı, sızıntı, şantaj veya kötüye kullanım gerçekleşebilir.\r\n\r\nFidye yazılımı, bilgisayar sistemlerini kilitleyerek fidye talep etme amacıyla yapılan bir siber saldırı türüdür. Bu tür saldırılar genellikle suç örgütleri, terörist gruplar veya bireysel hackerlar tarafından gerçekleştirilir. Hedef genellikle kritik altyapılar, sivil toplum kuruluşları veya bireysel kullanıcılar olup, sonucunda sistemlerin erişilemezliği, verilerin şifrelenmesi, fidyenin ödenmesi veya verilerin silinmesi durumu ortaya çıkar.\r\n\r\nHizmet dışı bırakma saldırıları ise, bilgisayar sistemlerini aşırı yükleyerek çalışamaz hale getirme amacı güder. Bu tür saldırılar genellikle devlet destekli aktörler, hacktivistler veya bireysel hackerlar tarafından gerçekleştirilir. Hedef genellikle devlet kurumları, özel sektör şirketleri veya kritik altyapılar olup, sonucunda sistemlerin kesintiye uğraması, performans düşüklüğü, maddi zarar veya itibar kaybı yaşanabilir.\r\n\r\nSiber saldırı türlerini bilmek ve anlamak, onların nasıl gerçekleştirildiğini ve ne tür zararlar oluşturduğunu anlamak için yararlı bir çerçeve sunar. Bu türlerin farkında olmak ve onları analiz etmek, siber güvenlik stratejilerinin geliştirilmesi ve uygulanması açısından önemlidir.\r\n\r\nSiber güvenlik önlemleri, siber saldırıların neden olabileceği zararları önlemek veya azaltmak için alınan aksiyonları içerir. Bu önlemler, bir kuruluşun veya bireyin ihtiyaçlarına, risk seviyelerine ve hedeflerine bağlı olarak değişiklik gösterebilir. Ancak genel olarak aşağıdaki faktörler dikkate alınabilir:\r\n\r\n    Siber güvenlik politikası: Siber güvenlik politikası, bir kuruluşun veya bireyin siber güvenlik ile ilgili vizyonunu, misyonunu, amaçlarını, sorumluluklarını ve kurallarını belirler. Bu belge, siber güvenlik kültürünün oluşturulması ve tüm paydaşların bilgilendirilmesi için önemlidir.\r\n    - Siber güvenlik farkındalığı: Siber güvenlik farkındalığı, bir kuruluşun veya bireyin siber tehditleri tanıyabilme, anlayabilme ve önleyebilme yeteneğidir. Eğitimler, seminerler, kampanyalar gibi etkinliklerle bu farkındalık artırılabilir. Yüksek siber güvenlik farkındalığına sahip olan kuruluşlar veya bireyler, siber saldırılara karşı daha hazırlıklı ve dirençli olabilirler.\r\n    - Siber güvenlik altyapısı: Siber güvenlik altyapısı, bir kuruluşun veya bireyin siber saldırılara karşı korunmasını sağlayan teknik sistemlerdir. Ağ güvenliği, uç nokta güvenliği, veri güvenliği, bulut güvenliği gibi alanları içerir. Bu altyapı, güncel, uyumlu ve test edilmiş olmalıdır.\r\n    - Siber güvenlik izleme ve müdahale: Siber güvenlik izleme ve müdahale, bir kuruluşun veya bireyin siber saldırıları tespit etme, analiz etme ve yanıt verme süreçleridir. Bu süreçler, siber olaylara hızlı ve etkili bir şekilde yanıt vermek için gereklidir ve siber istihbarat, siber olay yönetimi, siber olay yanıt ekipleri gibi unsurları içerir.\r\n\r\nSiber güvenlik önlemleri, siber risklerin ciddi sonuçlara yol açmasını engellemek için hayati öneme sahiptir. Bu önlemleri belirlemek ve uygulamak için profesyonel destek almak da oldukça yararlı olabilir. Unutmayın ki siber güvenlik bir seferlik bir iş değil, sürekli bir çaba ve dikkat gerektiren bir süreçtir. Bu süreçte alınacak tedbirler, siber tehditlerin yol açabileceği zararları önlemek için büyük önem taşır.\r\n\r\nİletişim:\r\n\r\nÖmer Faruk Uysal: https://github.com/electrichunter', 'technology', 'OIG (4).jpg', '2024-01-09', 'active'),
(5, 4, 'ömer', 'Bilinç ve Bilinçaltı ', 'Yakın zamanda okuduğum Prof. Dr. Nurhan Er’e ait bir makale ile ilgili notlarımı bu yazıda derleyeceğim. Biraz ders notu havasında olabilir, şimdiden uyarayım. Eğer olur da birileri okursa; iyi okumalar diliyorum. Makaleyi Türk Psikologları Dergisi’nden okudum, TPD yayınlarında bulabilirsiniz. Yazının sonunda kaynakça olarak vereceğim.\r\n\r\nMakalede 17. yüzyıldan 1998 yılına kadar olan bilinç-bilinçaltı çalışmaları ve araştırmalarından bahsediyor. Bilinç ve bilinçaltı kronolojisi dokuz başlıkta incelenmiş: İngiliz Görgülcüleri ve Çağrışımcıları, Alman Aktif Felsefesi, Modern Psikoloji, Yapısalcılık Ekolü, Fonksiyonalizm Ekolü, Gestalt Ekolü, Davranışçılık Ekolü, Psikoanaliz Ekolü, Günümüz (1998). Ama ben buraya ilk sekiz tanesini ekleyeceğim.\r\nAI çizimi\r\n\r\n1)İngiliz Görgülcüleri ve Çağrışımcıları:\r\n\r\nÖncelikle Görgülcüler ve Çağrışımcılar’ın görüşlerine dair küçük bir bilgi eklemek istiyorum.\r\n\r\nGörgülcüler, gerçek bilginin deneyimden geldiğini savunurken; Çağrışımcılar, aklın genel işleyişinin düşünce ve çağrışımlara indirgenmesi gerektiğini savunur. Bu başlık altında bahsedeceğimiz isimleri sıralarsak; Hobbes, Locke, Berkeley, Hume, J. Mill. Bu isimlerin görüşlerini basit bir dille sıralayacağım.\r\n\r\nHobbes: Bilinç maddenin hareketinin ürünüdür.\r\n\r\nLocke: Bilinç çağrışımlardan elde edilen güçtür.\r\n\r\nBerkeley: Zihin olmadan madde olmaz (eğer bilinçlilikle ilgili her şey zihindeyse). Madde zihni değil; zihin maddeyi yaratmıştır. Bu görüşü “zihinsel mekanizmalar anlayışı” olarak nitelendirilmektedir.\r\n\r\nHume: Bellek, imgeleme ve bilinç birer yapı değildir. Onlar, maddelerin çağrıştırılmasında izlenen yollardır.\r\n\r\nJ. Mill: Bilinç, duyumların birleşir düşünceleri; düşüncelerin birleşip duyumları oluşturduğu süreçtir. Mill bu görüşünde duyumları Newton’ın parçacıklarına benzetir.\r\n\r\n2)Alman Atıf Felsefesi:\r\n\r\nAlman Aktif Filozoflarına göre bilinç, aktif, özgün işleyişe sahip ve deneyimlere katkı sunan bir oluşumdur.\r\n\r\nLeibnitz: Fiziksel dünya ve zihinsel deneyimler aynı yöndür. Bilinç monadların algılanmasıyla oluşur ve tek başlarına bilinçsizlerdir.\r\n\r\nKant: Bilinç, yaşamın yarısını oluşturan gizil betimleme alanıdır.\r\n\r\nHerbart: Eğer iki karşıt kavram bilinçte karşılaşırsa güçlü olan bilinçte kalır, zayıf olan bilinç dışında sürüklenir ama yok olmaz. (Newton itici güç) Bilinçaltında bastırılmış şekilde varlığına devam eder.\r\n\r\nAlman Aktif Felsefesi Filozoflarının zihnin aktif olmasına dair görüşleri Modern Psikoloji’nin temellerinin atılmasına zemin hazırlamıştır.\r\n\r\n3)Modern Psikolojinin Başlangıcı:\r\n\r\nFechner: Tüm maddesel sistemler canlıdır ve bilinç sahibidir.\r\n\r\nHelmholtz: Bilinç deneyimlerin ürünüdür. Sıklıkla karşılaşılanlar alışkanlığa dönüşür, çıkarımlar ise bilinçaltına sürüklenir.\r\n\r\n4)Yapısalcılık Ekolü:\r\n\r\nYapısalcılara göre, bilinçlilik durumu sadece zihne aittir. Beden ve zihin birbirine bağımlı değildir. Ayrı incelenmeleri gereklidir. Aralarında birbirleri ile paralel etkileşimler bulunmamaktadır. Temelini Wundt’un attığı Yapısalcıların ilk göreci bilinçli deneyimlerin doğal elementlerini keşfetmektir.\r\n\r\nWundt: Bilinç tek elementten var olamaz, birbiri ile bağlantılıdır. Her birinin sinir sisteminde karşılığı vardır. Yine Wundt’a göre yaşantının her birimi ile yeni bir yaşantı yaratılabilir.\r\n\r\nTitchener: Bilinçlilik, zihnin kendi süreçlerinin farkında olmasıdır (bilinçlilik:zihin, bilinç:mental)\r\n\r\n5)Fonksiyonalizm Ekolü\r\n\r\nYapısalcılardan farklı olarak bilinçlilik işlevleri üzerinde dururlar.\r\n\r\nWilliam James: Bilinç, canlının biyolojik yaşantısını devam ettirmesi ve kolaylaştırmasında son derece önemlidir.\r\n\r\nAngell: Eğer organizma yeni bir durumla karşı karşıya gelirse bilinçlilik olaya müdahale ederek organizmanın duruma alışmasını sağlar.\r\n\r\n6)Gestalt Ekolü:\r\n\r\nGestaltçılara göre bilinçlilik Psikoloji bağlamında ele alınmalıdır.\r\n\r\nWertheimer: Duyumun birimsel elementlerinin toplamı bilinçtir.\r\n\r\n7)Davranışçılık Ekolü:\r\n\r\nWatson: Bilinçlilik durumu ruhçuluk fenomenine benzer; objektif doğrulama ve neden atfetme yapmak mümkün değildir.\r\n\r\nTolman: Organizmanın farklı uyaranlara farklı tepkisi=bilinçlilik.\r\n\r\nSkinner: Bilinçlilik serebral korteksin faaliyetlerinin bir sonucudur.\r\n\r\n8)Psikoanaliz Ekolü:\r\n\r\nFreud: Psişik yaşam= bilinç ve bilinçaltı süreçler. Bilinç yaşantının suni bölümüdür. Asıl önemli olan bilinçaltıdır, insan davranışlarını yönlendirir.\r\n\r\nJung: Bilinçaltı okyanusun derinlikleridir ve bilinçte okyanus yüzeyine yayılmıştır.\r\n\r\nHorney: Kişilik oluşumunda sadece bilinçaltı süreçler etkili değildir. Sosyal ve kültürel özellikler de kişilik oluşumuna katkı sağlamaktadır.\r\n\r\nBu kısımda belki de sizleri şok edeceğini düşündüğüm iki adet bilgiden bahsedeceğim.\r\n\r\n-Bilinçaltını ilk keşfeden ve tartılan kişi “Freud” değildir.\r\n\r\n-Bilinçaltı süreçlerle ilgili “buzdağı” benzetmesi “Freud”a değil Leibnitz’e aittir. İd, bilinçaltı ile; ego ve süperego, bilinçlilik durumu ile ilgili yansımadır.\r\n\r\nBir başka yazıda görüşmek üzere :)\r\n\r\nHuriye Nur KÖSE\r\n\r\nMakale: Er, N. (1998). Bilinç ve Bilinçaltı Kavramların Kronolojisi . TPD Dergisi, 1 (1), 1–16. ', 'lifestyle', '0 mTEvGMtrpujeYy8W.webp', '2024-01-09', 'active');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(2, 'omer', 'ouysal155@gmail.com', '01b307acba4f54f55aafc33bb06bbbf6ca803e9a');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_yetki` (`id`);

--
-- Tablo için indeksler `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Tablo için indeksler `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
