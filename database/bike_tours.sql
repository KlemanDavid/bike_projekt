-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Ápr 07. 17:13
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `bike_tours`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `bike_tours`
--

CREATE TABLE `bike_tours` (
  `id` int(11) NOT NULL,
  `tour_country` varchar(255) NOT NULL,
  `tour_time` int(11) NOT NULL,
  `difficulty` varchar(50) NOT NULL,
  `bike_type` varchar(50) NOT NULL,
  `tour_description` text DEFAULT NULL,
  `bike_pic` varchar(255) DEFAULT NULL,
  `backgr_pic` varchar(255) DEFAULT NULL,
  `route_name` varchar(255) NOT NULL,
  `calories` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `bike_tours`
--

INSERT INTO `bike_tours` (`id`, `tour_country`, `tour_time`, `difficulty`, `bike_type`, `tour_description`, `bike_pic`, `backgr_pic`, `route_name`, `calories`) VALUES
(3, 'Pest', 2, 'Nehéz', 'Mountainbike', 'Ez a 30 km-es MTB túra rövid, de annál intenzívebb kihívás, amely a Pilis-tetőre vezet, a hegység legmagasabb pontjára (756 m). Meredek emelkedők, technikás ösvények és sziklás lejtők teszik próbára az állóképességed és a bringakezelési tudásodat. Tapasztalt MTB-seknek ajánlott!\r\nÚtvonal és látványosságok\r\n•	A túra Pilisszentkeresztről indul, és az első pár km még kellemesen lankás erdei ösvényeken vezet.\r\n•	Hamarosan jön az igazi kihívás: a Pilis-tetőre vezető kaptató, amely több 20% körüli meredek szakaszt is tartalmaz.\r\n•	A csúcsra érve a Boldog Özséb-kilátóból lélegzetelállító panoráma nyílik a Dunakanyarra és a Budai-hegységre.\r\n•	A lefelé vezető ösvény köves, technikás és gyors, ezért jó fékek és biztos bringakezelés nélkül ne indulj neki.\r\nMire figyelj?\r\n•	A mászás rendkívül megerőltető, készülj fel intenzív tekerésre.\r\n•	Az ereszkedés veszélyes lehet a laza kavicsos részek miatt – csak megfelelő tapasztalattal vállald be a nagyobb sebességet!\r\n•	Időjárástól függően sár és csúszós gyökerek is nehezíthetik a terepet.\r\nMit vigyél magaddal?\r\n✔ Nagyon sok víz (legalább 1,5-2 liter)\r\n✔ Energiaszelet vagy gél a gyors kalóriapótlásra\r\n✔ Térd- és könyökvédő a durvább ereszkedés miatt\r\n✔ Tartalék belső vagy tubeless javító szett defekt esetére\r\nEz a túra kemény kihívás, de ha szereted a meredek mászásokat és a gyors lejtmeneteket, garantáltan felejthetetlen élmény lesz! ', 'https://www.canyon.com/dw/image/v2/BCML_PRD/on/demandware.static/-/Sites-canyon-storefront/default/dwead92c71/category-landing/mountain/seo-mtb-light.jpg?sw=1280&sfrm=jpg&q=80', 'https://www.ekekolozsvar.ro/sites/default/files/styles/cimlap_kep/public/kepek/beszamolok/2015/aprilis_2.jpg?itok=KII-Fmal', 'Pilis csúcs', 3000),
(4, 'Pest', 3, 'Közepes', 'Mountainbike', 'Ez a 40 km hosszú MTB túra a Budai-hegység egyik legszebb kilátópontjára, a Nagy-Szénásra (550 m) vezet. A változatos terep és a közepes nehézségű emelkedők miatt haladó bringásoknak ideális választás.\r\nÚtvonal és látványosságok\r\n•	A túra Nagykovácsiból indul, és eleinte erdei utakon kanyarog a Zsíros-hegy felé.\r\n•	Innen enyhén emelkedő murvás és földutakon kapaszkodunk fel a Nagy-Szénás csúcsára, ahol elképesztő kilátás nyílik a Pilisre és a Budai-hegységre.\r\n•	A lefelé vezető szakasz technikás, helyenként sziklás, de élvezetes és jól tekerhető.\r\n•	A visszaút Hosszú-árok érintésével halad, majd visszatér Nagykovácsiba, ahol egy kávézóban pihenhetsz meg.\r\nMire figyelj?\r\n•	Az emelkedők nem extrém meredekek, de hosszabb mászásra számíts.\r\n•	Az ereszkedés köves és gyökeres, ezért jó fékek és stabil bringakezelés ajánlott.\r\n•	Eső után az ösvények sárosak és csúszósak lehetnek.\r\nMit vigyél magaddal?\r\n✔ Min. 1,5 liter víz, mert a csúcson nincs forrás.\r\n✔ Energiaszelet vagy csoki az intenzív mászás miatt.\r\n✔ Alap szerszámkészlet és pótbelső defekt esetére.\r\n✔ Szélálló dzseki, mert a csúcson erős lehet a szél.\r\nEz a túra tökéletes választás azoknak, akik egy jó kis mászás után élveznék a tempós ereszkedést és a csodás panorámát! ', 'https://www.canyon.com/dw/image/v2/BCML_PRD/on/demandware.static/-/Sites-canyon-storefront/default/dwead92c71/category-landing/mountain/seo-mtb-light.jpg?sw=1280&sfrm=jpg&q=80', 'https://csodalatosbudapest.hu/wp-content/uploads/2025/01/nagykovacsi-nagyszenas-budai-hegyseg-kirandulas-gyalogtura-csodalatosbudapest.jpg', 'Nagy Szénás', 2500),
(5, 'Pest', 4, 'Nehéz', 'Országúti', 'Ez a 80 km hosszú országúti túra igazi kihívás a hegyi utak szerelmeseinek! A Hármashatár-hegy (495 m) megmászása meredek emelkedőkkel és technikás lejtmenetekkel teszi próbára az állóképességet, miközben lenyűgöző panorámát kínál Budapestre és a Pilisre.\r\nÚtvonal és látványosságok\r\n•	A túra a Margit-szigetről indul, ahol kellemes bemelegítő szakaszon haladhatsz át a budai oldalig.\r\n•	A Hármashatár-hegy első emelkedője a Fenyőgyöngye felé vezet, majd tovább kapaszkodsz a Guckler Károly-kilátóhoz, ahonnan csodás panoráma nyílik a fővárosra.\r\n•	Innen jön egy gyors, technikás lejtmenet, majd a túra Solymár és Nagykovácsi érintésével kanyarog tovább.\r\n•	A Pilis előhegyein folytatódik az útvonal, ahol hosszabb, de kevésbé meredek kaptatók várnak rád.\r\n•	Visszafelé a Hármashatár-hegyet egy másik oldalról is megmászod, mielőtt leereszkedsz Óbudára, ahol egy kellemes levezető szakasz után visszatérsz a Margit-szigetre.\r\nMire figyelj?\r\n•	Az első és utolsó kaptató nagyon meredek, készülj rá mentálisan és fizikailag is!\r\n•	Az ereszkedések éles kanyarokkal és szűk utakkal tarkítottak, ezért jó fékek és biztos bringakezelés szükséges.\r\n•	Az út változatos minőségű, néhány szakaszon rosszabb burkolattal is találkozhatsz.\r\nMit vigyél magaddal?\r\n✔ Min. 2 liter víz, mert az intenzív mászás során gyorsan dehidratálódhatsz.\r\n✔ Energiagél, banán vagy müzliszelet, mert a hosszú emelkedők rengeteg energiát igényelnek.\r\n✔ Pótbelső és mini pumpa, mert a lejtmeneteknél nagyobb sebesség miatt nő a defekt esélye.\r\n✔ Szélálló mellény vagy könnyű dzseki, mert a csúcson hűvösebb lehet.\r\nEz a túra komoly állóképességet és kitartást igényel, de a csodás kilátások és az élvezetes szerpentinek minden fáradtságot megérnek!', 'https://d1mgeijqpfaspl.cloudfront.net/uploads/bike/media/88414/62e93edc712e2_35C50CFB-EF15-4649-B3DE-DFCC72D06F94.jpeg', 'https://csodahelyek.hu/wp-content/uploads/2021/10/guckler_karoly_kilato_kristofeszter-1.jpg', 'Hármashatárra fel', 3500),
(6, 'Nógrád', 5, 'Könnyű', 'Gravel', 'Ez a 60 km hosszú gravel túra a Cserhát lankás dombjai között vezet, ahol csendes erdei utak, szelíd emelkedők és eldugott kis falvak várnak rád. Az enyhe terepviszonyok és a gyönyörű táj miatt tökéletes választás azoknak, akik könnyed, élvezetes túrát keresnek.\r\nÚtvonal és látványosságok\r\n•	A túra Romhányból indul, majd murvás és aszfaltos utakon halad Alsópetény felé, ahol a Prónay-kastély mellett gurulhatsz el.\r\n•	Innen a Cserhát egyik legszebb részére, a Nézsa és Bánk közötti dombvidékre érkezel, ahol festői panoráma és kis tavak teszik hangulatossá az utat.\r\n•	A túra Bánki-tónál egy hosszabb pihenőt is tartalmazhat, ahol frissítőzhetsz vagy megmártózhatsz a nyári időszakban.\r\n•	A visszaút Csesztve és Nógrádsáp érintésével halad, ahol kis forgalmú, hullámzó dombvidéki utak vezetnek vissza Romhányba.\r\nMire figyelj?\r\n•	Az út főként murvás és földes szakaszokon halad, így gravel vagy trekking bringa ajánlott.\r\n•	A dombok között gyorsan változhat az időjárás, érdemes rétegesen öltözködni.\r\n•	A térségben kevés a bolt és a vízvételi lehetőség, így készülj megfelelő készlettel!\r\nMit vigyél magaddal?\r\n✔ Min. 1,5 liter víz, mert az útvonalon kevés a forrás.\r\n✔ Néhány energiaszelet vagy szendvics, hogy ne merülj ki idő előtt.\r\n✔ Alap szerszámkészlet és pótbelső, mert a murvás szakaszok miatt nő a defekt esélye.\r\n✔ Napszemüveg és naptej, mert a dombvidéken kevés az árnyékos rész.\r\nEz a túra tökéletes választás kényelmes tempójú gravel bringázáshoz, ahol a Cserhát eldugott szépségeit fedezheted fel, messze a forgalmas utaktól.', 'https://bikepacking.com/wp-content/uploads/2024/01/Blackheart-Bike-Co-Gravel-AL_3.jpg', 'https://i.szalas.hu/pois/4914/original/30347.jpg', 'Cserhát kerekkaland', 1500),
(7, 'Nógrád', 4, 'Közepes', 'Országúti', 'Ez a 75 km hosszú országúti túra Bátonyterenyéből indulva festői dombvidékeken és kisebb szerpentineken vezet keresztül, miközben a Mátra és a Cserhát panorámájában gyönyörködhetsz. A közepes nehézségű emelkedők és a lendületes lejtmenetek változatossá teszik az utat, ezért haladó bringásoknak ideális választás.\r\nÚtvonal és látványosságok\r\n•	A rajt Bátonyterenyéről indul, majd egy rövidebb sík szakasz után Mátraverebély irányába haladsz.\r\n•	Innen jön az első kihívás: a Mátraverebély-Szentkút kegyhelyhez vezető emelkedő, amely az egyik legismertebb zarándokhely Magyarországon.\r\n•	Továbbhaladva Buják és Kisbágyon érintésével a Cserhát lankás dombjai között kanyarogsz tovább.\r\n•	A legtávolabbi pont Bér település, ahonnan egy látványos, hullámzó vonalvezetésű úton tekerhetsz vissza Bátonyterenyébe.\r\nMire figyelj?\r\n•	A zarándokhelyhez vezető szakasz rövid, de meredek kaptatókkal nehezített.\r\n•	Az ereszkedéseknél éles kanyarok és kisebb úthibák is előfordulhatnak.\r\n•	A térségben kevés autóforgalom van, de a falvakban figyelj a gyalogosokra és a helyi közlekedésre.\r\nMit vigyél magaddal?\r\n✔ Min. 1,5 liter víz, mert az útvonalon kevés vízvételi lehetőség van.\r\n✔ Energiagél vagy müzliszelet, hogy legyen elég energiád a mászásokhoz.\r\n✔ Pótbelső és pumpa, mert néhány útszakaszon lehetnek rosszabb minőségű aszfaltrészek.\r\n✔ Szélálló mellény, mert a hegyes-dombos vidékeken gyorsan változhat az időjárás.\r\nEz a túra tökéletes edzés és élmény egyben, hiszen izgalmas terepviszonyok, történelmi helyszínek és csodás panorámák várnak rád! \r\n', 'https://d1mgeijqpfaspl.cloudfront.net/uploads/bike/media/88414/62e93edc712e2_35C50CFB-EF15-4649-B3DE-DFCC72D06F94.jpeg', 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjs8bUjjzKKKxM3kJNd1_itKzOL55YQBUBFMMgO8PLWAfSQRvU0w2U58IDcTkE9hNZ1Gi9GjGt5vfvq6P14dA50EBnVHSc0RFj7BqECLsL6bj_6ZJpso2vSZ7JZvTJ7MSxG99oXrbs5iIkF/s1600/_BRK2340-kicsi.jpg', 'Bátonyterenyei bringabetyár', 2000),
(8, 'Nógrád', 2, 'Nehéz', 'Mountainbike', 'Ez a 35 km hosszú MTB túra a Mátra északi, vadregényes oldalán halad, ahol technikás ösvények, kemény mászások és izgalmas lejtmenetek várnak rád. A terep kihívást jelentő, de a lélegzetelállító panorámák és a természet érintetlensége minden izzadságcseppet megérnek!\r\nÚtvonal és látványosságok\r\n•	A túra Mátrakeresztesről indul, és rögtön egy meredek, sziklás mászással kezdődik a Csörgő-patak völgyén keresztül.\r\n•	A Felső-Mátra erdős gerincútjain haladva elérjük Galyatetőt (964 m), a túra legmagasabb pontját, ahol a kilátóból pazar panoráma nyílik.\r\n•	Innen egy lendületes, technikás ösvényeken kanyargó lejtmenet következik Mátraszentlászló felé, amelyet gyökerek és sziklás szakaszok tesznek izgalmassá.\r\n•	A végső szakaszon egy erdészeti úton ereszkedsz vissza Mátrakeresztesre, ahol egy helyi vendéglőben feltöltheted az energiáidat.\r\nMire figyelj?\r\n•	Az emelkedők hosszúak és meredekek, így érdemes erőbeosztással haladni.\r\n•	Az ereszkedések technikásak és sziklásak, ezért jó fékek és stabil bringakezelés szükséges.\r\n•	Az időjárás gyorsan változhat a hegyekben, készülj rá megfelelő öltözékkel!\r\nMit vigyél magaddal?\r\n✔ Min. 1,5 liter víz, mert kevés vízvételi pont van az útvonalon.\r\n✔ Energiaszelet vagy gél, mert a nagy szintkülönbség miatt gyorsan merülnek az energiatartalékaid.\r\n✔ Tartalék belső és szerszámkészlet, mert a köves szakaszokon könnyű defektet kapni.\r\n✔ Szélálló dzseki, mert a hegycsúcson hűvösebb lehet.\r\nEz a túra igazi erőpróba a montisoknak, de a Mátra vadregényes erdői, a kilátópontok és az izgalmas ösvények miatt felejthetetlen élményt nyújt!', 'https://www.canyon.com/dw/image/v2/BCML_PRD/on/demandware.static/-/Sites-canyon-storefront/default/dwead92c71/category-landing/mountain/seo-mtb-light.jpg?sw=1280&sfrm=jpg&q=80', 'https://fw.photos/LxzO5Ij6nkXfltLjIw-_l7142mo=/fit-in/1920x1920/https%3A%2F%2Fwww.avarhotel.hu%2Fuploads%2Farticle%2Fkekesteto-64b93ab9c7a18.jpg', 'Mátrai pedálpróba', 3000),
(10, 'Nógrád', 4, 'Nehéz', 'Országúti', 'Ez a 90 km hosszú, országúti túra az Ipoly folyó partján és a környező hegyek között vezet, egy igazán kihívást jelentő, de gyönyörű tájakat bemutató útvonalon. A túra során a hegyek és völgyek váltakozása, valamint a történelmi települések adnak különleges hangulatot, miközben a technikásabb szakaszok és meredek emelkedők kemény próbát jelentenek.\r\nÚtvonal és látványosságok\r\n•	A túra Nógrád megyéből, Ipolydamásdról indul, és a nagy ívű emelkedők után következik Ipolyvisk és Ipolytarnóc falvai között egy sor meredek, de gyors lejtő.\r\n•	A túra legszebb része a Dunakanyar és a Börzsöny hegyvidéke, ahonnan gyönyörű panoráma nyílik a folyóra és az egész vidékre.\r\n•	Az Ipolytarnóci ősmaradványok látogatása is javasolt egy kis kitérőként, hiszen a világ egyik legfontosabb őslénytani lelőhelye, mely a környék egyik nagy történelmi kincse.\r\n•	A visszautat a túra Vámosmikola és Szécsény felé kanyarogva teheted meg, ahol a hosszú, egyenes utakon való tekerés a gyorsabb részeket biztosítja.\r\nMire figyelj?\r\n•	A túra nehezebb emelkedőket és széles, gyors lejtőket tartogat, ezért fontos a fékek és a tempó megfelelő beállítása, különösen a lejtmeneteknél.\r\n•	Az útvonal több szakasza csúszós és eső után veszélyes lehet, ezért óvatosan kell kezelni a kanyarokat és a lejtőket.\r\n•	A túra nagy része kis forgalmú utakon halad, de a hegyvidéki szakaszoknál figyelj a helyi közlekedésre.\r\nMit vigyél magaddal?\r\n✔ Min. 2 liter víz, mivel az út mentén nem mindig lesz vízvételi lehetőség.\r\n✔ Energiagél, szelet vagy étkezési bár, hogy pótold a kalóriákat a hosszú emelkedők során.\r\n✔ Pótbelső és szerszámkészlet, mert az úton előfordulhat defekt.\r\n✔ Esővédő vagy szélálló dzseki, hiszen a magasabb hegyeken hűvösebb lehet.\r\nEz a túra a hegyek és a folyópartok közötti egyedülálló összhangot adja meg, miközben a kihívások és a látványosságok különleges élményt biztosítanak a tapasztalt bringások számára!', 'https://d1mgeijqpfaspl.cloudfront.net/uploads/bike/media/88414/62e93edc712e2_35C50CFB-EF15-4649-B3DE-DFCC72D06F94.jpeg', 'https://aquamagazin.hu/wp-content/uploads/2024/09/aquamagazin-utazas-dunakanyar-iskolai-kirandulas-hajojarat-iho-00.jpg', 'Ipoly parti pörrentő', 3000),
(11, 'Komárom-Esztergom', 5, 'Könnyű', 'Gravel', 'Ez a 75 km hosszú, könnyű gravel túra a Duna partján halad, festői tájakon és történelmi városokon keresztül. Az útvonal Komáromból indul, végig a Duna menti kerékpárúton, áthalad Neszmély, Dunaalmás, Lábatlan és Esztergom településein, miközben a folyó közelsége és a Börzsöny látványa igazán különleges hangulatot teremt.\r\nÚtvonal és látványosságok\r\n•	Komáromból indulva az első szakaszon a Duna töltésén haladsz, ahol széles, jól járható földutak és aszfaltozott kerékpárutak váltják egymást.\r\n•	Neszmély közelében érdemes megállni egy rövid pihenőre, ahol a híres Neszmélyi borvidék szőlőültetvényei és a Duna-parti panoráma fogad.\r\n•	Dunaalmás és Lábatlan térségében kis falusi utakon haladsz tovább, majd egy festői átkelés következik a folyóparti gátakon.\r\n•	Az út végén Esztergom érintése igazi élményt nyújt: a Bazilika monumentális épülete már messziről látszik, érdemes itt egy hosszabb pihenőt tartani, felfedezni a várost és a Duna-partot.\r\nMire figyelj?\r\n•	Az út nagy része sík, ezért a túra könnyen teljesíthető, de a gravel szakaszokon néhol laza murvás részekkel is számolni kell.\r\n•	A Duna mentén az időjárás gyorsan változhat, így szél és hirtelen záporok előfordulhatnak.\r\n•	Ha hosszabb pihenőt tartasz Esztergomban, figyelj arra, hogy legyen elegendő időd a visszaútra is.\r\nMit vigyél magaddal?\r\n✔ Min. 1,5 liter víz, mert a Duna-parti szakaszon kevés vízvételi lehetőség van.\r\n✔ Energiaszelet vagy banán, hogy végig legyen elég energiád.\r\n✔ Tartalék belső és pumpa, mivel a gravel szakaszokon előfordulhat defekt.\r\n✔ Esőkabát vagy szélálló dzseki, ha a folyóparton feltámadna a szél.\r\nEz a túra könnyű, de látványos tekerést kínál a Duna mentén, ideális választás azoknak, akik kényelmes tempóban szeretnék élvezni a természetet és a történelmi városokat.', 'https://bikepacking.com/wp-content/uploads/2024/01/Blackheart-Bike-Co-Gravel-AL_3.jpg', 'https://zcms.hu/grandhotelesztergomhu/img/programs/dbe9b6284abd92d8eaa0c02f17950c51.jpg', 'Duna parti tekerés', 2000),
(12, 'Komárom-Esztergom', 4, 'Közepes', 'Országúti', 'Ez a 60 km hosszú, közepes nehézségű országúti túra Tata és környékének festői tájain vezet végig. A túra során a Tatai Öreg-tó, a Cseke-tó és a Gerecse lankái nyújtanak lenyűgöző látványt, miközben a történelmi épületek, várak és természeti kincsek között kerekezhetsz. Az útvonal aszfaltozott, kiváló minőségű utakon halad, és ideális azoknak, akik szeretik a gyors tempót, de egy kis dombos kihívásra is vágynak.\r\nÚtvonal és látványosságok\r\n•	A túra Tata központjából indul, a gyönyörű Tatai Öreg-tó partján, amely Magyarország egyik legszebb mesterséges tava, és számos vízimadár élőhelye.\r\n•	Az első szakasz a Cseke-tó felé vezet, ahol a romantikus Angolkert és az Esterházy-kastély mellett haladsz el.\r\n•	Továbbhaladva a túra a Gerecse lábához ér, ahol enyhe emelkedők és gyors lejtők váltakoznak, így változatos terepet biztosít.\r\n•	A visszavezető szakasz Dunaszentmiklós és Naszály felé fordul, ahol csendes vidéki utakon lehet élvezni a tekerést, mielőtt újra Tata belvárosába érkezel.\r\n•	A túra végén érdemes egy rövid megállót tartani a Tatai várnál, amely a tó partján áll, és lenyűgöző kilátást nyújt a vízre.\r\nMire figyelj?\r\n•	Az út nagy része jó minőségű aszfalt, de a tó körül egyes szakaszokon keskenyebb, kanyargós utak is előfordulnak.\r\n•	A Gerecse lankái kisebb emelkedőket és gyors lejtőket tartogatnak, így a fékek megfelelő állapotára figyelni kell.\r\n•	A tó körüli szakaszokon gyalogosforgalom is lehet, így itt érdemes fokozott óvatossággal tekerni.\r\nMit vigyél magaddal?\r\n✔ Min. 1,5 liter víz, mert a Gerecse körüli szakaszon kevés vízvételi lehetőség van.\r\n✔ Energiagél vagy szelet, hogy a dombosabb részeken is legyen elegendő energiád.\r\n✔ Pótbelső és pumpa, mert az országúti gumik érzékenyebbek a defektre.\r\n✔ Szélálló dzseki, mivel a tóparton és a hegyekben változékony lehet az időjárás.\r\nEz a túra ideális választás azoknak, akik egy kellemes, de technikásabb országúti kihívásra vágynak a vizek városának festői környezetében!', 'https://d1mgeijqpfaspl.cloudfront.net/uploads/bike/media/88414/62e93edc712e2_35C50CFB-EF15-4649-B3DE-DFCC72D06F94.jpeg', 'https://csodalatosmagyarorszag.hu/wp-content/uploads/2020/04/tata-oreg-to-tatai-var-esterhazy-kastely-csodalatosmagyarorszag.jpg', 'Tatai tókerülő kerekezés', 2500),
(13, 'Komárom-Esztergom', 2, 'Nehéz', 'Mountainbike', 'Ez a 30 km hosszú, nehéz mountainbike túra Esztergom és környékének legmeredekebb emelkedőin vezet végig, érintve a város legszebb templomait és kápolnáit. A túra során meredek mászások, erdei ösvények és technikás lejtők várnak rád, miközben Esztergom lenyűgöző történelmi és vallási emlékei között kerekezel.\r\nÚtvonal és látványosságok\r\n•	A túra az Esztergomi Bazilikától indul, amely Magyarország legnagyobb temploma, és már a túra elején fantasztikus panorámát nyújt a városra és a Dunára.\r\n•	Innen a Vaskapu-hegy felé vesszük az irányt, ahol meredek, kavicsos ösvények teszik próbára az állóképességedet. A hegytetőről csodás kilátás nyílik a Dunakanyarra.\r\n•	A következő állomás a Szent Tamás-hegyi Kápolna, amelyhez egy meredek, de rövid emelkedő vezet. Itt érdemes megállni, és élvezni a történelmi városrész hangulatát.\r\n•	A túra technikásabb része a Strázsa-hegy felé vezet, ahol keskeny erdei ösvények és meredek lejtők váltakoznak. Ez a szakasz igazi MTB-kalandot kínál!\r\n•	A végső ereszkedés a Szent Anna-templomhoz vezet, majd a Duna-parton visszakanyarodsz a Bazilikához.\r\nMire figyelj?\r\n•	A terep meredek emelkedőket és köves ösvényeket tartalmaz, így jó állóképesség és megfelelő MTB tudás szükséges.\r\n•	Az erdei szakaszokon csúszós, gyökeres részek lehetnek, főleg eső után.\r\n•	A városi részeken figyelj a forgalomra, mert több ponton is aszfaltos utak keresztezésével haladsz.\r\nMit vigyél magaddal?\r\n✔ 2 liter víz, mert az emelkedőkön gyorsan kiizzadsz.\r\n✔ Energiagél vagy szelet, mert az intenzív mászások sok energiát igényelnek.\r\n✔ Masszív MTB sisak és kesztyű, mert a technikás lejtők kihívást jelenthetnek.\r\n✔ Pótbelső és szerszámkészlet, mert a köves szakaszokon defekt előfordulhat.\r\nEz a túra igazi kihívás hegyi bringásoknak, akik nemcsak a meredek emelkedőket, hanem Esztergom történelmi hangulatát is szeretnék felfedezni két keréken!', 'https://www.canyon.com/dw/image/v2/BCML_PRD/on/demandware.static/-/Sites-canyon-storefront/default/dwead92c71/category-landing/mountain/seo-mtb-light.jpg?sw=1280&sfrm=jpg&q=80', 'https://ilovesztergom.com/wp-content/uploads/cache/images/Szenttamas/Szenttamas-781500736.jpg', 'Esztergomi templombajáró túra', 3000),
(14, 'Komárom-Esztergom', 3, 'Közepes', 'Mountainbike', 'Ez a 40 km hosszú, közepes nehézségű mountainbike túra a Gerecse vadregényes erdeiben és dombjain vezet végig. Az útvonal változatos, magában foglal erdészeti utakat, egyenetlen kavicsos szakaszokat és lendületes lejtőket, miközben lenyűgöző panorámák és természeti érdekességek kísérik az utadat.\r\nÚtvonal és látványosságok\r\n•	A túra Tatabányáról, a Turul-emlékműtől indul, ahonnan pazar kilátás nyílik a városra és a környező dombokra.\r\n•	Innen a Gerecse sűrű erdeibe tekersz, ahol széles erdészeti utak és sziklás ösvények váltják egymást.\r\n•	A Ranzinger-kilátóhoz érkezve érdemes egy rövid pihenőt tartani, innen csodálatos panoráma tárul eléd.\r\n•	A túra érinti a Pisznice-barlang környékét, ahol a meredek, gyökeres szakaszok kihívást jelenthetnek.\r\n•	A visszaút egy lendületes, szerpentinező erdei ösvényen vezet vissza Tatabányára.\r\nMire figyelj?\r\n•	Az útvonal erdős, köves szakaszokat és kisebb emelkedőket tartalmaz, így stabil MTB tudás szükséges.\r\n•	Az erdei utak eső után csúszóssá válhatnak, ezért megfelelő guminyomással indulj.\r\n•	Vadregényes, kevésbé forgalmas területen haladsz, így érdemes térképet vagy GPS-t használni.\r\nMit vigyél magaddal?\r\n✔ Min. 1,5 liter víz, mert az útvonalon kevés vízvételi lehetőség van.\r\n✔ Energiapótlásra szeletek vagy gélek, mert a terep változatos és igénybe veszi az állóképességet.\r\n✔ Masszív sisak és kesztyű, mert a sziklás lejtők extra védelmet igényelhetnek.\r\n✔ Pótbelső és defektjavító készlet, mert a köves szakaszokon nagyobb az esély a defektre.\r\nEz a túra tökéletes választás azoknak, akik szeretik az erdei ösvények kihívásait, de közben a Gerecse lenyűgöző táját is élvezni szeretnék!', 'https://www.canyon.com/dw/image/v2/BCML_PRD/on/demandware.static/-/Sites-canyon-storefront/default/dwead92c71/category-landing/mountain/seo-mtb-light.jpg?sw=1280&sfrm=jpg&q=80', 'https://www.turistamagazin.hu/msite/24/000000F7JD.jpg', 'Gerecsei görgő', 2500),
(15, 'Komárom-Esztergom', 4, 'Nehéz', 'Országúti', 'Ez a 100 km hosszú, nehéz országúti túra Komárom és környékének legszebb aszfaltos útjain halad, miközben történelmi erődök, folyóparti szakaszok és dimbes-dombos vidékek váltják egymást. Az útvonal a Duna két partját is érinti, így a túra során festői panorámák és kulturális látnivalók kísérik az utadat.\r\nÚtvonal és látványosságok\r\n•	A túra Komáromból, a Monostori Erődtől indul, amely Közép-Európa egyik legnagyobb újkori erődrendszere.\r\n•	Innen a Duna mentén haladsz, majd átkelsz a hídon Szlovákiába, hogy egy rövid szakaszon Révkomárom (Komárno) történelmi utcáin is kerekezhess.\r\n•	Visszatérve a magyar oldalra Kisigmánd és Kocs felé veszed az irányt, ahol enyhe dombos emelkedők nehezítik a haladást.\r\n•	Az útvonal érinti a Géza fejedelem-emlékművet, ahonnan gyönyörű kilátás nyílik a vidékre.\r\n•	A túra végén visszakanyarodsz Komáromba, és a Duna-parti kerékpárúton haladsz vissza a kiindulóponthoz.\r\nMire figyelj?\r\n•	Erős oldalszél előfordulhat a Duna mentén, ami extra energiát igényelhet.\r\n•	A szakasz több hosszú, egyenes úton halad, ahol a tempóváltás kulcsfontosságú.\r\n•	A dombos szakaszokon figyelj a váltásokra és a megfelelő erőbeosztásra, mert a táv hosszú és kimerítő.\r\nMit vigyél magaddal?\r\n✔ Min. 2 liter víz vagy izotóniás ital, mert a hosszú távon fontos a hidratáció.\r\n✔ Energiagélek, szeletek vagy banán, mert a folyamatos erőkifejtés miatt szükséged lesz pótlásra.\r\n✔ Szélálló kabát, mert a Duna közelsége miatt hűvösebb lehet a levegő.\r\n✔ Pótbelső és pumpa, mert az országúti bringák érzékenyebbek a defektekre.\r\nEz a túra tökéletes választás edzett országútisok számára, akik szeretik a nagy távokat, a lendületes tempót, és a történelmi helyszínek felfedezését két keréken!', 'https://d1mgeijqpfaspl.cloudfront.net/uploads/bike/media/88414/62e93edc712e2_35C50CFB-EF15-4649-B3DE-DFCC72D06F94.jpeg', 'https://epiteszforum.hu/uploads/images/2013/02/952_02-fort-monostor-air-view-from-south.jpg', 'Komáromi körkörös', 3000),
(16, 'Heves', 5, 'Könnyű', 'Gravel', 'Ez az 50 km hosszú, könnyű gravel túra a Bükk hegység peremén kanyarog, gyönyörű erdei utakon és festői dombvidéken keresztül. A túra során aszfaltos, murvás és földutak váltják egymást, így változatos terepre kell számítani. A Bükk kapujában elhelyezkedő települések és természeti szépségek garantálják a felejthetetlen élményt.\r\nÚtvonal és látványosságok\r\n•	A túra Egerből indul, ahonnan a Berva-völgy irányába kerekezünk egy kellemes, lankás szakaszon.\r\n•	Innen egy könnyű erdei úton haladunk tovább Felsőtárkány felé, ahol érdemes megállni a Szikla-forrásnál és a tóparton egy rövid pihenőre.\r\n•	Az útvonal érinti az Imó-kő forrásvidékét, amely egy különleges karsztforrás, csak csapadékos időben aktív.\r\n•	Innen egy széles, kavicsos úton tekerünk Noszvaj felé, ahol a barlanglakások és a helyi pincék kiváló lehetőséget adnak egy rövid kulturális kitérőre.\r\n•	A visszaút egy enyhe lejtőkkel tarkított, panorámás úton vezet Eger irányába, ahol a város történelmi látképe már messziről látható.\r\nMire figyelj?\r\n•	Az erdei szakaszokon apróbb kövek és gyökerek nehezíthetik a haladást.\r\n•	A Bükk peremén az időjárás gyorsan változhat, így érdemes rétegesen öltözni.\r\n•	Bár az útvonal viszonylag könnyű, a változatos terep miatt szükséges egy stabil gravel vagy trekking bicikli.\r\nMit vigyél magaddal?\r\n✔ Min. 1,5 liter víz, mert a túra egy része erdei területen halad, kevés frissítőponttal.\r\n✔ Néhány energiaszelet vagy szendvics, hogy legyen mit harapni a pihenők alatt.\r\n✔ Pótbelső vagy defektjavító készlet, mert a kavicsos szakaszok miatt nőhet a defekt esélye.\r\n✔ Könnyű szélálló kabát, mert a dombvidéki részeken változhat a hőmérséklet.\r\nEz a túra tökéletes választás azoknak, akik szeretik a természetközeli bringázást, és egy könnyed, de izgalmas útvonalon fedeznék fel a Bükk kapuját!\r\n', 'https://bikepacking.com/wp-content/uploads/2024/01/Blackheart-Bike-Co-Gravel-AL_3.jpg', 'https://utazaskatalogus.hu/wp-content/uploads/2020/12/utazaskatalogus-bukk-latnivalok-kirandulasok-belko.jpg', 'Biciklitúra a Bükk peremén', 1500),
(17, 'Heves', 4, 'Közepes', 'Országúti', 'Ez a 70 km hosszú, közepes nehézségű országúti túra Egerből indulva a környék legszebb útjain vezet. A túra során dimbes-dombos emelkedők, szőlőültetvényekkel tarkított panorámás szakaszok és történelmi települések várják a bringásokat. Az útvonal kiváló aszfaltminőségű, így országúti bringások számára ideális.\r\nÚtvonal és látványosságok\r\n•	A túra Eger belvárosából indul, érintve a Dobó teret és a híres Egri Várat.\r\n•	Innen kiérve a városból, Szomolya és Bogács felé haladsz, ahol gyönyörű szőlőültetvények és borászatok mellett tekerhetsz.\r\n•	Bogácson érdemes egy rövid pihenőt tartani, akár a fürdő közelében, majd folytatás Cserépfalu irányába, ahol a Bükki Nemzeti Park kapujában jársz.\r\n•	Az egyik legszebb szakasz a Noszvaj felé vezető út, amely egy enyhe, de hosszabb emelkedővel teszi próbára a lábakat – cserébe fantasztikus panorámát kínál a Bükk vonulataira.\r\n•	A túra végén visszakanyarodsz Egerbe, ahol egy jól megérdemelt frissítő vagy egy borkóstoló is beleférhet.\r\nMire figyelj?\r\n•	A túra több kisebb emelkedőt tartalmaz, így érdemes megfelelő erőbeosztással tekerni.\r\n•	A forgalom nem túl nagy, de a borvidéki szakaszokon traktorok és lassabb járművek előfordulhatnak.\r\n•	A visszaút egyes részei gyors lejtőkön haladnak, ezért fontos a stabil fékhasználat.\r\nMit vigyél magaddal?\r\n✔ Min. 1,5 liter víz vagy izotóniás ital, mert az emelkedőkön könnyen kiszáradhatsz.\r\n✔ Néhány energiaszelet vagy gyümölcs, hogy legyen erőd a visszaútra is.\r\n✔ Pótbelső és pumpa, mert az országúti gumik érzékenyebbek a defektekre.\r\n✔ Napszemüveg és napkrém, mert a nyílt borvidéki szakaszokon kevés az árnyék.\r\nEz a túra tökéletes azoknak, akik szeretnék egy lendületes országúti bringázással felfedezni a Bükk alatti borvidéket, és élvezni a régió változatos terepviszonyait!', 'https://d1mgeijqpfaspl.cloudfront.net/uploads/bike/media/88414/62e93edc712e2_35C50CFB-EF15-4649-B3DE-DFCC72D06F94.jpeg', 'https://visiteger.com/uploads/16638336561napegerben1.jpg', 'Eger tekerős túra', 2500),
(18, 'Heves', 2, 'Nehéz', 'Mountainbike', 'Ez a 30 km hosszú, rövid, de rendkívül megterhelő MTB túra egy igazi kihívás a hegyi bringások számára. A cél nem más, mint feljutni a Kékestetőre, Magyarország legmagasabb pontjára (1014 m). Az útvonal főként meredek erdei ösvényeken, köves ösvényeken és keskeny hegyi utakon vezet, így tapasztalt bringások számára ajánlott.\r\nÚtvonal és látványosságok\r\n•	A túra Mátrafüredről indul, ahol egy asfaltos bemelegítő szakasz után hamar ráfordulsz a köves és gyökeres erdei ösvényekre.\r\n•	A Sástó mellett haladsz el, amely Magyarország legmagasabban fekvő tava, itt érdemes egy rövid pihenőt tartani a lenyűgöző panorámában gyönyörködve.\r\n•	Az egyik legmeredekebb szakasz a Mátraháza és Kékestető közötti emelkedő, ahol a terep egyre nehezebbé válik – itt kitartásra és jó technikai tudásra van szükség.\r\n•	A csúcson a TV-torony és a kilátópont fogad, ahonnan tiszta időben a Dunakanyar is látható! A lefelé vezető út adrenalinban gazdag, teknőszerű erdei ösvényeken és gyors lejtőkön zajlik.\r\nMire figyelj?\r\n•	A köves szakaszokon kiemelten figyelj a stabil irányításra, mert könnyen megcsúszhatsz.\r\n•	Az időjárás a Kékesen gyorsan változik, így réteges öltözet javasolt.\r\n•	Lefelé óvatosan haladj, mert a technikás részeken könnyű elesni.\r\nMit vigyél magaddal?\r\n✔ Legalább 1 liter víz, mert az emelkedőn gyorsan dehidratálódhatsz.\r\n✔ Energiaszelet vagy banán, hogy bírjad az intenzív mászást.\r\n✔ Masszív MTB bicikli jó fékekkel, mert az ereszkedés igénybe veszi a felszerelést.\r\n✔ Védőfelszerelés (kesztyű, sisak, térdvédő), hogy biztonságban érezd magad a technikás szakaszokon.\r\nEz a túra azoknak szól, akik szeretik a kihívásokat és nem riadnak vissza a meredek emelkedőktől és technikás ösvényektől. A Kékes meghódítása egy igazi bringás élmény!', 'https://www.canyon.com/dw/image/v2/BCML_PRD/on/demandware.static/-/Sites-canyon-storefront/default/dwead92c71/category-landing/mountain/seo-mtb-light.jpg?sw=1280&sfrm=jpg&q=80', 'https://www.turistamagazin.hu/msite/24/000000HR08.jpg', 'Kékes kerékláz', 3000),
(19, 'Heves', 3, 'Közepes', 'Mountainbike', 'Ez a 35 km hosszú, közepesen nehéz MTB túra a Mátra vadregényes ösvényein vezet végig, felfedezve gyönyörű kilátópontokat, sűrű erdőségeket és természetes forrásokat. Az útvonal változatos: széles dózerutak, keskeny ösvények, gyors lejtők és kihívást jelentő emelkedők váltják egymást, így minden terephez alkalmazkodni kell.\r\nÚtvonal és látványosságok\r\n•	A túra Mátrafüredről indul, egy rövid aszfaltos bemelegítéssel, majd belecsapunk az erdei ösvényekbe.\r\n•	Az első komolyabb kihívás a Kozmáry-kilátóhoz vezető meredek kaptató, ahonnan csodás panoráma nyílik a Mátra vonulataira.\r\n•	Innen a Sástó felé ereszkedünk, amely Magyarország legmagasabban fekvő tava – kiváló pihenőpont egy gyors frissítésre.\r\n•	A következő szakasz Mátraházán keresztül kanyarog, majd egy széles erdei dózerúton folytatódik a túra Galyatető irányába, amelynek sűrű fenyvesei és meredek ösvényei próbára teszik a bringásokat.\r\n•	A visszaút gyors és élvezetes lejtmeneteket tartogat, végül egy hangulatos ösvény vezet vissza Mátrafüredre.\r\nMire figyelj?\r\n•	Az emelkedők sok helyen kövesek és gyökeresek, ezért jó tapadású gumik és erős fékek ajánlottak.\r\n•	Az ereszkedéseknél óvatosan a sebességgel, mert az ösvények kanyarognak, és néhol kidőlt fák nehezíthetik az utat.\r\n•	A túra erdős területen halad, így a hirtelen időjárás-változásokra érdemes felkészülni.\r\nMit vigyél magaddal?\r\n✔ Min. 1,5 liter víz, mert a mászások során sok folyadékot veszítesz.\r\n✔ Energiaszelet vagy gyümölcs, hogy legyen elég energiád az emelkedőkhöz.\r\n✔ Sisak, kesztyű, esetleg térdvédő, mert a technikás részeknél jól jöhet a plusz védelem.\r\n✔ Jól beállított váltó és fékrendszer, mert az útvonal igénybe veszi a felszerelést.\r\nEz a túra igazi élményt nyújt a természet szerelmeseinek és a hegyi bringázás kedvelőinek. A Mátra vadregényes erdői, a csodás kilátópontok és az izgalmas ösvények garantálják a felejthetetlen élményt!', 'https://www.canyon.com/dw/image/v2/BCML_PRD/on/demandware.static/-/Sites-canyon-storefront/default/dwead92c71/category-landing/mountain/seo-mtb-light.jpg?sw=1280&sfrm=jpg&q=80', 'https://static.maiutazas.hu/uploads/mu_campaign/2/7/3/3/_/273324_4c8ca754dd7f41f4e4d4c43d0f52414d7d3d52ec_original.jpg', 'Mátrai pedálcsapás', 2500),
(20, 'Heves', 4, 'Nehéz', 'Országúti', 'A Tisza-tavat körbetekerő túra az egyik legnépszerűbb hazai kerékpáros útvonal, amely 68 km hosszan követi a tó partvonalát. Ez az országúti bringásoknak szóló nehéz túra főként sík terepen halad, de a szél és a hosszú táv komoly kihívást jelenthet. A tökéletes aszfaltozott kerékpárutak és a festői vízparti látvány garantálják az élményt!\r\nÚtvonal és látványosságok\r\n•	A túra Poroszlóról indul, ahol a Tisza-tavi Ökocentrum érdemes egy rövid megállót.\r\n•	A tó déli része felé haladva elérjük Sarudot és Dinnyéshátat, ahol csodás panoráma nyílik a tóra.\r\n•	Tiszafüred után egy hosszú gátszakaszon folytatódik az út, ahol a Tisza ártere és a madárrezervátum teszi különlegessé az élményt.\r\n•	A keleti oldalon Abádszalók strandjai mellett tekerhetünk el, majd egy hosszabb szakasz után visszaérünk a kiindulópontunkhoz.\r\nMire figyelj?\r\n•	Bár az út nagy része sík, a szélirány komolyan befolyásolhatja a haladást – erre érdemes felkészülni.\r\n•	A tó körüli kerékpárút jól kiépített, de egyes szakaszokon autós forgalom is előfordulhat.\r\n•	Nyáron nagy a hőség, ezért napvédő krém és elegendő folyadék ajánlott.\r\nMit vigyél magaddal?\r\n✔ Legalább 2 liter víz vagy izotóniás ital.\r\n✔ Napszemüveg és sapka, mert a nyílt szakaszokon kevés az árnyék.\r\n✔ Könnyű energiapótlás (zselé, szelet, banán), hogy bírjuk a hosszú tekerést.\r\n✔ Pótbelső és pumpa, mert defekt bármikor előfordulhat.\r\nEz a túra kiváló edzés és egyben gyönyörű kerékpáros élmény a Tisza-tó partján. Ha szereted a hosszabb távokat és a sebességet, ez a tókerülés neked való!', 'https://d1mgeijqpfaspl.cloudfront.net/uploads/bike/media/88414/62e93edc712e2_35C50CFB-EF15-4649-B3DE-DFCC72D06F94.jpeg', 'https://img.oastatic.com/img2/66606310/max/variant.jpg', 'Tisza tavi tókerülő', 3000),
(21, 'Budapest', 5, 'Könnyű', 'Gravel', 'Ez az 5 órás könnyű gravel túra Budapest belvárosából indul, és a város legszebb, bicajozható részein vezet végig – klasszikus Duna-parti panorámával, zöld szigetekkel, nyüzsgő terekkel és csendes ösvényekkel. A túra ideális választás azoknak, akik szeretnék felfedezni Budapestet bringán, de nem extrém sportként, hanem élményként tekintenek rá.\r\nÚtvonal és látványosságok\r\n• A túra a Szent István-bazilika elől indul – remek találkozópont, és egy reggeli kávéval is indíthatunk.\r\n• Innen rövid gurulás a Parlamenthez, majd le a Duna-partra, ahol végig bringaút vezet a víz mentén.\r\n• A Margitsziget szinte kötelező megálló: árnyékos sétányok, futók és kerékpárosok paradicsoma – és ivókút is akad.\r\n• A túra folytatódik az Óbudai-sziget (Hajógyári) felé, ahol kavicsos, murvás szakaszok adnak kis gravel hangulatot.\r\n• Ezután irány a Római-part – Budapest egyik legbringásabb része, fák alatt vezető kerékpárúttal és csábító lángososokkal.\r\n• A Városligeten keresztül zárjuk a kört, ahol megcsodálhatjuk a Vajdahunyad várát és a Hősök terét, majd visszagurulunk az Andrássy úton vagy kis utcákon át a Bazilikához.\r\nMire figyelj?\r\n• A városban sok a gyalogos és a turistacsoport, főleg a belvárosban és a Margitszigeten – óvatosan előzz!\r\n• Az útvonal nagy része aszfaltos vagy könnyű murvás, de a kavicsos szakaszok miatt nem árt, ha nem teljesen slick gumival mész.\r\n• Ha nyáron bringázol, készülj napsütésre és melegre, kevés az árnyékos rész a Rómain és a gáton.\r\n• Kerékpárzár kötelező, ha beülnél valahová vagy megnéznél valamit.\r\nMit vigyél magaddal?\r\n✔ Legalább 1–1,5 liter víz vagy kulacs, főleg melegebb napokon\r\n✔ Napszemüveg és fényvédő krém – a Duna-parton és Rómain sok a nyílt szakasz\r\n✔ Egy kis snack (zabszelet, banán, müzli) – főleg ha nem állsz meg étteremben\r\n✔ Pótbelső, pumpa vagy CO₂ patron – a kavicsos részeken jól jön, ha van nálad\r\n✔ Telefon (és térképes applikáció, pl. Komoot vagy Ride with GPS)\r\nEz a túra tökéletes, ha szeretnél egy napot aktívan, mégis kényelmesen eltölteni Budapesten, látni néhány ikonikus helyet, és egy kellemeset bringázni közben. Nem verseny, nem hegyi edzés – inkább egy bringás városi felfedezés. Kezdőknek, újrakezdőknek, városi graveleseknek ideális!', 'https://bikepacking.com/wp-content/uploads/2024/01/Blackheart-Bike-Co-Gravel-AL_3.jpg', 'https://d3iso9mq9tb10q.cloudfront.net/magefan_blog/sightseeing/Budapest-Landmark-St.Stephens-Basilica-Big-Bus-Tours.jpg', 'Bicaj a Bazilikánál', 1000),
(22, 'Budapest', 4, 'Közepes', 'Országúti', 'A Csepel-sziget északi részét megkerülő országúti túra egy igazi klasszikus Budapest környékén, amely 4 órányi tekerés során váltogatja a Duna-parti panorámát, a falusi hangulatot és a gyors, egyenes szakaszokat. A túra kb. 80–90 km hosszú, ideális edzés és élménybringázás azoknak, akik már nem kezdők, de nem is keresnek brutál szinteket.\r\nÚtvonal és látványosságok\r\n• A túra Budapest déli részéről, például a Kopaszi gáttól vagy Csepeltől indul. A Kvassay hídon átkelve kezdődik a sprint!\r\n• Halásztelek, Szigetszentmiklós irányába vezet az út, innen már gyorsan haladhatunk Dunaharaszti és Szigethalom felé – itt kevés az emelkedő, de a forgalomra figyelni kell.\r\n• A Tököl – Szigetbecse – Ráckeve szakasz a túra csúcspontja: festői Duna-part, kisforgalmú, országúti bringával is sima aszfalt, és közben elhaladunk Ráckeve híres hídja és a Savoyai-kastély mellett.\r\n• Innen Szigetszentmártonon és Szigetcsépen át vezet vissza az út Észak-Csepel felé, zárásként pedig akár a Gubacsi hídon is visszajuthatunk a városba.\r\nMire figyelj?\r\n• Az útvonal több szakaszon országúti aszfalt, de néhány részen lehet rosszabb minőségű szélén tekerni – itt fontos a figyelmes haladás.\r\n• A szigetcsépi és ráckevei szakaszokon kevesebb az árnyék, így nyáron számítani kell erősebb napsütésre.\r\n• Néhány kisebb vasúti átjáró, körforgalom és trafipax is előfordul, tartsd be a szabályokat, főleg lakott területen belül.\r\n• A szigeti útszakaszok kisforgalmúak, de néha gyorsan haladó autók jöhetnek – láthatósági mellény vagy élénk színű mez hasznos lehet.\r\nMit vigyél magaddal?\r\n✔ Legalább 2 kulacs víz vagy izotóniás ital – kevés árnyék, sok aszfalt\r\n✔ Energiapótlás – szelet, banán vagy zselé, főleg a hosszabb szakaszokhoz\r\n✔ Naptej, szemüveg, kesztyű – a szél és a nap is próbára tesz\r\n✔ Pótbelső, CO₂-patron vagy pumpa, alap szerszámkészlet\r\n✔ GPS/komoot/Strava – könnyebb követni a sziget kanyargós szakaszait\r\n✔ Pénz vagy kártya – Ráckevén több büfé, fagyizó, kávézó is van, megéri megállni egy rövid frissítőre\r\n\r\nEz a túra igazi országúti élmény: panoráma, tempó, folyópart, kisvárosok. A „Csepel Sprint” egy edzés és kiruccanás egyben – ajánlott egyedül, párosan vagy kisebb bringás társasággal. Jó időben, megfelelő tempóval 4 óra alatt kényelmesen teljesíthető, megállóval együtt.', 'https://d1mgeijqpfaspl.cloudfront.net/uploads/bike/media/88414/62e93edc712e2_35C50CFB-EF15-4649-B3DE-DFCC72D06F94.jpeg', 'https://www.nyugdijaskirandulasok.com/wp-content/uploads/2022/08/rackeve2.jpg', 'Csepel Sprint', 1500),
(23, 'Budapest', 2, 'Nehéz', 'Mountainbike', 'Ez a 2 órás mountain bike túra nem a hosszúságáról híres, hanem a szintemelkedésről. A Hármashatár-hegyre vezető meredek kaptatók és technikás ösvények igazi erőpróba minden terepbringásnak. A cél a panorámás kilátó, de az odáig vezető út önmagában is élmény: erdő, köves emelkedők, gyökerek, sikló ösvények és néha egy kis tolás is belefér.\r\nÚtvonal és látványosságok\r\n• A túra Óbudáról vagy a Gázgyári-úttól indul – itt még aszfalton melegítünk rá a hegymászásra.\r\n• Fenyőgyöngye után jön az első komolyabb mászás, majd rákanyarodunk a kék háromszög vagy a kék kör jelzésre, attól függően, mennyire szeretnénk technikás terepet.\r\n• A kilátó előtti szakasz meredek, köves, de bringával is teljesíthető (ha nem, a tolás is edzés 😄). A Hármashatár-kilátóból csodás panoráma nyílik a városra és a Pilisre – megéri feljutni!\r\n• Lefelé haladhatunk a kék kereszt vagy a piros sáv mentén, attól függően, mennyire vállalunk be köves vagy gyökeres lejtőket. Visszaérkezés a Fenyőgyöngyéhez, majd le Óbudára.\r\nMire figyelj?\r\n• A túra rövid, de meredek, és főleg terepen halad – jó fékek, megfelelő áttétel és kapaszkodó gumik ajánlottak.\r\n• A terep technikás: gyökerek, kövek, szűk kanyarok – haladó MTB-szint javasolt.\r\n• Eső után csúszós lehet, a kövek és gyökerek sárosan elég alattomosak.\r\n• A kilátónál sok a túrázó és gyalogos – figyelj a közlekedésre és tartsd tiszteletben a turistautat.\r\nMit vigyél magaddal?\r\n✔ 1–1,5 liter víz – rövid túra, de sok mászás, izzasztó\r\n✔ Technikai kesztyű és bukósisak – kötelező!\r\n✔ Energiazselé vagy szelet – gyors energiapótlás a mászás előtt\r\n✔ Pótbelső, mini pumpa és láncbontó – defekt és láncleesés gyakori\r\n✔ Telefon GPS-szel – az ösvények néha nem jól jelzettek\r\n✔ Lámpa (opcionálisan), ha délután indulsz és rásötétedhet\r\nEz a túra egy intenzív, tömény MTB-élmény, amit akár edzésként, akár gyors levezetésként is be lehet iktatni egy napba. A Hármashatár-kilátó ikonikus célpont a budapesti montisok körében – ha nem félsz az emelkedőktől és élvezed a természetes technikás terepet, ez a túra neked szól.', 'https://www.canyon.com/dw/image/v2/BCML_PRD/on/demandware.static/-/Sites-canyon-storefront/default/dwead92c71/category-landing/mountain/seo-mtb-light.jpg?sw=1280&sfrm=jpg&q=80', 'https://img2.oastatic.com/img2/28284968/max/variant.jpg', 'Hármashatár kilátó', 3000),
(24, 'Budapest', 3, 'Közepes', 'Országúti', 'A Hősök tere ikonikus indulópont, és méltó kezdete ennek a kb. 3 órás, közepes nehézségű országúti túrának, amely Budapest belvárosából indulva a Duna mentén halad Észak felé, egészen Leányfalu környékéig, majd vissza. A túra nem csak fizikailag kellemes kihívás, de látványban is gazdag: történelmi épületek, vízparti kerékpárutak, gyors országutak és zöldbe burkolt szakaszok váltják egymást.\r\nÚtvonal és látványosságok\r\n• A túra a Hősök teréről indul, majd a Dózsa György úton keresztül jutunk ki az Árpád hídhoz, ahonnan a Római-parton tekerünk tovább észak felé.\r\n• A Gázgyár mellett haladva elérjük Budakalászt, majd következik Szentendre, ahol rövid pihenőt is beiktathatunk a belvárosban vagy a Duna-parton.\r\n• A Leányfaluig tartó szakasz kiváló országúti terep: jó minőségű aszfalt, enyhe hullámzások, tempózható egyenesek.\r\n• A visszaút megegyezik az odaúttal, de ha időnk engedi, kis kitérőt tehetünk a Lupa-tó irányába, majd visszagurulunk a Hősök terére.\r\nMire figyelj?\r\n• A Római-part bringaútja népszerű, főleg hétvégén – gyalogosokra, családokra figyelj, és inkább itt laza tempót válassz.\r\n• A Budakalász–Szentendre közötti szakaszon rövidebb időre forgalmas útra kell hajtani – itt különösen fontos a láthatóság.\r\n• A Leányfaluig vezető rész enyhén hullámos, de folyamatos tekerés esetén kellemes közepes terhelést jelent.\r\nMit vigyél magaddal?\r\n✔ 1–1,5 liter víz vagy izotóniás ital – akár útközben is pótolható\r\n✔ Napszemüveg és sisak – a váltakozó fényviszonyok miatt hasznos\r\n✔ Energiaszelet vagy banán – Leányfalunál jól jön egy kis frissítés\r\n✔ Pótbelső és pumpa – a városi szakaszon és a külvárosban is bármikor előfordulhat defekt\r\n✔ Zár – ha Szentendrén megállnál, érdemes biztonságosan lerakni a bringát\r\nEz a túra a városból indul, de kilép a természetbe – igazi országúti flow élmény, ami jól esik hétköznap délután, hétvégén reggel, vagy ha egy gyorsabb, de látványos edzésre vágysz. A Hősök tekerése méltó elnevezés, mert egy történelmi helyszínt köt össze egy klasszikus bringás útvonallal, ahol a tempó és a táj egyszerre inspirál.', 'https://d1mgeijqpfaspl.cloudfront.net/uploads/bike/media/88414/62e93edc712e2_35C50CFB-EF15-4649-B3DE-DFCC72D06F94.jpeg', 'https://www.mysteryhotelbudapest.com/wp-content/uploads/2018/10/Hosok-tere-Mystery-Hotel-Budapest.jpg', 'Hősök tekerése', 2000),
(29, 'pest', 3, 'Nehéz', 'Mountainbike', 'ffdggffgfgf', 'https://d1mgeijqpfaspl.cloudfront.net/uploads/bike/media/88414/62e93edc712e2_35C50CFB-EF15-4649-B3DE-DFCC72D06F94.jpeg', 'https://d1mgeijqpfaspl.cloudfront.net/uploads/bike/media/88414/62e93edc712e2_35C50CFB-EF15-4649-B3DE-DFCC72D06F94.jpeg', 'pesti esti', 0),
(30, 'pest', 3, 'Közepes', 'Mountainbike', 'gghjkfffgghhhggggjk', 'https://d1mgeijqpfaspl.cloudfront.net/uploads/bike/media/88414/62e93edc712e2_35C50CFB-EF15-4649-B3DE-DFCC72D06F94.jpeg', 'https://d1mgeijqpfaspl.cloudfront.net/uploads/bike/media/88414/62e93edc712e2_35C50CFB-EF15-4649-B3DE-DFCC72D06F94.jpeg', 'hhajjsjs', 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_28_182055_create_bike_tours_table', 2);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('QssmcQC4CSlRTynKczVjzyubp5wMLr7wS7E1qz6Y', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiblNmMmNpdVh6WVdBMnd3am5Jc3BtblZPRzc1QjZUUFE2THdHdFpsVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743198956);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `bike_tours`
--
ALTER TABLE `bike_tours`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- A tábla indexei `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- A tábla indexei `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- A tábla indexei `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- A tábla indexei `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- A tábla indexei `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `bike_tours`
--
ALTER TABLE `bike_tours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT a táblához `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
