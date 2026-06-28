package defpackage;

import android.content.Context;
import android.database.SQLException;
import android.os.Build;
import android.os.Trace;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.google.android.gms.common.api.Api;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class ix {
    public static final eh g;
    public static eh h;
    public static so1 m;
    public static long n;
    public static Method o;
    public static Method p;
    public static Method q;
    public static final ka0 a = new ka0(-39202156, false, new sq(14));
    public static final ka0 b = new ka0(1582488484, false, new sq(15));
    public static final ka0 c = new ka0(414328099, false, new sq(16));
    public static final ka0 d = new ka0(-1514016380, false, new sq(17));
    public static final float[] e = {1.0f, 10.0f, 100.0f, 1000.0f, 10000.0f, 100000.0f, 1000000.0f, 1.0E7f, 1.0E8f, 1.0E9f, 1.0E10f};
    public static final long[] f = {-6499023860262858360L, -3512093806901185046L, -9112587656954322510L, -6779048552765515233L, -3862124672529506138L, -215969822234494768L, -7052510166537641086L, -4203951689744663454L, -643253593753441413L, -7319562523736982739L, -4537767136243840520L, -1060522901877412746L, -7580355841314464822L, -4863758783215693124L, -1468012460592228501L, -7835036815511224669L, -5182110000961642932L, -1865951482774665761L, -8083748704375247957L, -5492999862041672042L, -2254563809124702148L, -8326631408344020699L, -5796603242002637969L, -2634068034075909558L, -8563821548938525330L, -6093090917745768758L, -3004677628754823043L, -8795452545612846258L, -6382629663588669919L, -3366601061058449494L, -9021654690802612790L, -6665382345075878084L, -3720041912917459700L, -38366372719436721L, -6941508010590729807L, -4065198994811024355L, -469812725086392539L, -7211161980820077193L, -4402266457597708587L, -891147053569747830L, -7474495936122174250L, -4731433901725329908L, -1302606358729274481L, -7731658001846878407L, -5052886483881210105L, -1704422086424124727L, -7982792831656159810L, -5366805021142811859L, -2096820258001126919L, -8228041688891786181L, -5673366092687344822L, -2480021597431793123L, -8467542526035952558L, -5972742139117552794L, -2854241655469553088L, -8701430062309552536L, -6265101559459552766L, -3219690930897053053L, -8929835859451740015L, -6550608805887287114L, -3576574988931720989L, -9152888395723407474L, -6829424476226871438L, -3925094576856201394L, -294682202642863838L, -7101705404292871755L, -4265445736938701790L, -720121152745989333L, -7367604748107325189L, -4597819916706768583L, -1135588877456072824L, -7627272076051127371L, -4922404076636521310L, -1541319077368263733L, -7880853450996246689L, -5239380795317920458L, -1937539975720012668L, -8128491512466089774L, -5548928372155224313L, -2324474446766642487L, -8370325556870233411L, -5851220927660403859L, -2702340141148116920L, -8606491615858654931L, -6146428501395930760L, -3071349608317525546L, -8837122532839535322L, -6434717147622031249L, -3431710416100151157L, -9062348037703676329L, -6716249028702207507L, -3783625267450371480L, -117845565885576446L, -6991182506319567135L, -4127292114472071014L, -547429124662700864L, -7259672230555269896L, -4462904269766699466L, -966944318780986428L, -7521869226879198374L, -4790650515171610063L, -1376627125537124675L, -7777920981101784778L, -5110715207949843068L, -1776707991509915931L, -8027971522334779313L, -5423278384491086237L, -2167411962186469893L, -8272161504007625539L, -5728515861582144020L, -2548958808550292121L, -8510628282985014432L, -6026599335303880135L, -2921563150702462265L, -8743505996830120772L, -6317696477610263061L, -3285434578585440922L, -8970925639256982432L, -6601971030643840136L, -3640777769877412266L, -9193015133814464522L, -6879582898840692749L, -3987792605123478032L, -373054737976959636L, -7150688238876681629L, -4326674280168464132L, -796656831783192261L, -7415439547505577019L, -4657613415954583370L, -1210330751515841308L, -7673985747338482674L, -4980796165745715438L, -1614309188754756393L, -7926472270612804602L, -5296404319838617848L, -2008819381370884406L, -8173041140997884610L, -5604615407819967859L, -2394083241347571919L, -8413831053483314306L, -5905602798426754978L, -2770317479606055818L, -8648977452394866743L, -6199535797066195524L, -3137733727905356501L, -8878612607581929669L, -6486579741050024183L, -3496538657885142324L, -9102865688819295809L, -6766896092596731857L, -3846934097318526917L, -196981603220770742L, -7040642529654063570L, -4189117143640191558L, -624710411122851544L, -7307973034592864071L, -4523280274813692185L, -1042414325089727327L, -7569037980822161435L, -4849611457600313890L, -1450328303573004458L, -7823984217374209643L, -5168294253290374149L, -1848681798185579782L, -8072955151507069220L, -5479507920956448621L, -2237698882768172872L, -8316090829371189901L, -5783427518286599473L, -2617598379430861437L, -8553528014785370254L, -6080224000054324913L, -2988593981640518238L, -8785400266166405755L, -6370064314280619289L, -3350894374423386208L, -9011838011655698236L, -6653111496142234891L, -3704703351750405709L, -19193171260619233L, -6929524759678968877L, -4050219931171323192L, -451088895536766085L, -7199459587351560659L, -4387638465762062920L, -872862063775190746L, -7463067817500576073L, -4717148753448332187L, -1284749923383027329L, -7720497729755473937L, -5038936143766954517L, -1686984161281305242L, -7971894128441897632L, -5353181642124984136L, -2079791034228842266L, -8217398424034108273L, -5660062011615247437L, -2463391496091671392L, -8457148712698376476L, -5959749872445582691L, -2838001322129590460L, -8691279853972075893L, -6252413799037706963L, -3203831230369745799L, -8919923546622172981L, -6538218414850328322L, -3561087000135522498L, -9143208402725783417L, -6817324484979841368L, -3909969587797413806L, -275775966319379353L, -7089889006590693952L, -4250675239810979535L, -701658031336336515L, -7356065297226292178L, -4583395603105477319L, -1117558485454458744L, -7616003081050118571L, -4908317832885260310L, -1523711272679187483L, -7869848573065574033L, -5225624697904579637L, -1920344853953336643L, -8117744561361917258L, -5535494683275008668L, -2307682335666372931L, -8359830487432564938L, -5838102090863318269L, -2685941595151759932L, -8596242524610931813L, -6133617137336276863L, -3055335403242958174L, -8827113654667930715L, -6422206049907525490L, -3416071543957018958L, -9052573742614218705L, -6704031159840385477L, -3768352931373093942L, -98755145788979524L, -6979250993759194058L, -4112377723771604669L, -528786136287117932L, -7248020362820530564L, -4448339435098275301L, -948738275445456222L, -7510490449794491995L, -4776427043815727089L, -1358847786342270957L, -7766808894105001205L, -5096825099203863602L, -1759345355577441598L, -8017119874876982855L, -5409713825168840664L, -2150456263033662926L, -8261564192037121185L, -5715269221619013577L, -2532400508596379068L, -8500279345513818773L, -6013663163464885563L, -2905392935903719049L, -8733399612580906262L, -6305063497298744923L, -3269643353196043250L, -8961056123388608887L, -6589634135808373205L, -3625356651333078602L, -9183376934724255983L, -6867535149977932074L, -3972732919045027189L, -354230130378896082L, -7138922859127891907L, -4311967555482476980L, -778273425925708321L, -7403949918844649557L, -4643251380128424042L, -1192378206733142148L, -7662765406849295699L, -4966770740134231719L, -1596777406740401745L, -7915514906853832947L, -5282707615139903279L, -1991698500497491195L, -8162340590452013853L, -5591239719637629412L, -2377363631119648861L, -8403381297090862394L, -5892540602936190089L, -2753989735242849707L, -8638772612167862923L, -6186779746782440750L, -3121788665050663033L, -8868646943297746252L, -6474122660694794911L, -3480967307441105734L, -9093133594791772940L, -6754730975062328271L, -3831727700400522434L, -177973607073265139L, -7028762532061872568L, -4174267146649952806L, -606147914885053103L, -7296371474444240046L, -4508778324627912153L, -1024286887357502287L, -7557708332239520786L, -4835449396872013078L, -1432625727662628443L, -7812920107430224633L, -5154464115860392887L, -1831394126398103205L, -8062150356639896359L, -5466001927372482545L, -2220816390788215277L, -8305539271883716405L, -5770238071427257602L, -2601111570856684098L, -8543223759426509417L, -6067343680855748868L, -2972493582642298180L, -8775337516792518219L, -6357485877563259869L, -3335171328526686933L, -9002011107970261189L, -6640827866535438582L, -3689348814741910324L, Long.MIN_VALUE, -6917529027641081856L, -4035225266123964416L, -432345564227567616L, -7187745005283311616L, -4372995238176751616L, -854558029293551616L, -7451627795949551616L, -4702848726509551616L, -1266874889709551616L, -7709325833709551616L, -5024971273709551616L, -1669528073709551616L, -7960984073709551616L, -5339544073709551616L, -2062744073709551616L, -8206744073709551616L, -5646744073709551616L, -2446744073709551616L, -8446744073709551616L, -5946744073709551616L, -2821744073709551616L, -8681119073709551616L, -6239712823709551616L, -3187955011209551616L, -8910000909647051616L, -6525815118631426616L, -3545582879861895366L, -9133518327554766460L, -6805211891016070171L, -3894828845342699810L, -256850038250986858L, -7078060301547948643L, -4235889358507547899L, -683175679707046970L, -7344513827457986212L, -4568956265895094861L, -1099509313941480672L, -7604722348854507276L, -4894216917640746191L, -1506085128623544835L, -7858832233030797378L, -5211854272861108819L, -1903131822648998119L, -8106986416796705681L, -5522047002568494197L, -2290872734783229842L, -8349324486880600507L, -5824969590173362730L, -2669525969289315508L, -8585982758446904049L, -6120792429631242157L, -3039304518611664792L, -8817094351773372351L, -6409681921289327535L, -3400416383184271515L, -9042789267131251553L, -6691800565486676537L, -3753064688430957767L, -79644842111309304L, -6967307053960650171L, -4097447799023424810L, -510123730351893109L, -7236356359111015049L, -4433759430461380907L, -930513269649338230L, -7499099821171918250L, -4762188758037509908L, -1341049929119499481L, -7755685233340769032L, -5082920523248573386L, -1741964635633328828L, -8006256924911912374L, -5396135137712502563L, -2133482903713240300L, -8250955842461857044L, -5702008784649933400L, -2515824962385028846L, -8489919629131724885L, -6000713517987268202L, -2889205879056697349L, -8723282702051517699L, -6292417359137009220L, -3253835680493873621L, -8951176327949752869L, -6577284391509803182L, -3609919470959866074L, -9173728696990998152L, -6855474852811359786L, -3957657547586811828L, -335385916056126881L, -7127145225176161157L, -4297245513042813542L, -759870872876129024L, -7392448323188662496L, -4628874385558440216L, -1174406963520662366L, -7651533379841495835L, -4952730706374481889L, -1579227364540714458L, -7904546130479028392L, -5268996644671397586L, -1974559787411859078L, -8151628894773493780L, -5577850100039479321L, -2360626606621961247L, -8392920656779807636L, -5879464802547371641L, -2737644984756826647L, -8628557143114098510L, -6174010410465235234L, -3105826994654156138L, -8858670899299929442L, -6461652605697523899L, -3465379738694516970L, -9083391364325154962L, -6742553186979055799L, -3816505465296431844L, -158945813193151901L, -7016870160886801794L, -4159401682681114339L, -587566084924005019L, -7284757830718584993L, -4494261269970843337L, -1006140569036166268L, -7546366883288685774L, -4821272585683469313L, -1414904713676948737L, -7801844473689174817L, -5140619573684080617L, -1814088448677712867L, -8051334308064652398L, -5452481866653427593L, -2203916314889396588L, -8294976724446954723L, -5757034887131305500L, -2584607590486743971L, -8532908771695296838L, -6054449946191733143L, -2956376414312278525L, -8765264286586255934L, -6344894339805432014L, -3319431906329402113L, -8992173969096958177L, -6628531442943809817L, -3673978285252374367L, -9213765455923815836L, -6905520801477381891L, -4020214983419339459L, -413582710846786420L, -7176018221920323369L, -4358336758973016307L, -836234930288882479L, -7440175859071633406L, -4688533805412153853L, -1248981238337804412L, -7698142301602209614L, -5010991858575374113L, -1652053804791829737L, -7950062655635975442L, -5325892301117581398L, -2045679357969588844L, -8196078626372074883L, -5633412264537705700L, -2430079312244744221L, -8436328597794046994L, -5933724728815170839L, -2805469892591575644L, -8670947710510816634L, -6226998619711132888L, -3172062256211528206L, -8900067937773286985L, -6513398903789220827L, -3530062611309138130L, -9123818159709293187L, -6793086681209228580L, -3879672333084147821L, -237904397927796872L, -7066219276345954901L, -4221088077005055722L, -664674077828931749L, -7332950326284164199L, -4554501889427817345L, -1081441343357383777L, -7593429867239446717L, -4880101315621920492L, -1488440626100012711L, -7847804418953589800L, -5198069505264599346L, -1885900863153361279L, -8096217067111932656L, -5508585315462527915L, -2274045625900771990L, -8338807543829064350L, -5811823411358942533L, -2653093245771290262L, -8575712306248138270L, -6107954364382784934L, -3023256937051093263L, -8807064613298015146L, -6397144748195131028L, -3384744916816525881L, -9032994600651410532L, -6679557232386875260L, -3737760522056206171L, -60514634142869810L, -6955350673980375487L, -4082502324048081455L, -491441886632713915L, -7224680206786528053L, -4419164240055772162L, -912269281642327298L, -7487697328667536418L, -4747935642407032618L, -1323233534581402868L, -7744549986754458649L, -5069001465015685407L, -1724565812842218855L, -7995382660667468640L, -5382542307406947896L, -2116491865831296966L, -8240336443785642460L, -5688734536304665171L, -2499232151953443560L, -8479549122611984081L, -5987750384837592197L, -2873001962619602342L, -8713155254278333320L, -6279758049420528746L, -3238011543348273028L, -8941286242233752499L, -6564921784364802720L, -3594466212028615495L, -9164070410158966541L, -6843401994271320272L, -3942566474411762436L, -316522074587315140L, -7115355324258153819L, -4282508136895304370L, -741449152691742558L, -7380934748073420955L, -4614482416664388289L, -1156417002403097458L, -7640289654143017767L, -4938676049251384305L, -1561659043136842477L, -7893565929601608404L, -5255271393574622601L, -1957403223540890347L, -8140906042354138323L, -5564446534515285000L, -2343872149716718346L, -8382449121214030822L, -5866375383090150624L, -2721283210435300376L, -8618331034163144591L, -6161227774276542835L, -3089848699418290639L, -8848684464777513506L, -6449169562544503978L, -3449775934753242068L, -9073638986861858149L, -6730362715149934782L, -3801267375510030573L, -139898200960150313L, -7004965403241175802L, -4144520735624081848L, -568964901102714406L, -7273132090830278360L, -4479729095110460046L, -987975350460687153L, -7535013621679011327L, -4807081008671376254L, -1397165242411832414L, -7790757304148477115L, -5126760611758208489L, -1796764746270372707L, -8040506994060064798L, -5438947724147693094L, -2186998636757228463L, -8284403175614349646L, -5743817951090549153L, -2568086420435798537L, -8522583040413455942L, -6041542782089432023L, -2940242459184402125L, -8755180564631333184L, -6332289687361778576L, -3303676090774835316L, -8982326584375353929L, -6616222212041804507L, -3658591746624867729L, -9204148869281624187L, -6893500068174642330L, -4005189066790915008L, -394800315061255856L, -7164279224554366766L, -4343663012265570553L, -817892746904575288L, -7428711994456441411L, -4674203974643163860L, -1231068949876566920L, -7686947121313936181L, -4996997883215032323L, -1634561335591402499L, -7939129862385708418L, -5312226309554747619L, -2028596868516046619L, -8185402070463610993L};
    public static final String[] i = {"ga_conversion", "engagement_time_msec", "exposure_time", "ad_event_id", "ad_unit_id", "ga_error", "ga_error_value", "ga_error_length", "ga_event_origin", "ga_screen", "ga_screen_class", "ga_screen_id", "ga_previous_screen", "ga_previous_class", "ga_previous_id", "manual_tracking", "message_device_time", "message_id", "message_name", "message_time", "message_tracking_id", "message_type", "previous_app_version", "previous_os_version", "topic", "update_with_analytics", "previous_first_open_count", "system_app", "system_app_update", "previous_install_count", "ga_event_id", "ga_extra_params_ct", "ga_group_name", "ga_list_length", "ga_index", "ga_event_name", "campaign_info_source", "cached_campaign", "deferred_analytics_collection", "ga_session_number", "ga_session_id", "campaign_extra_referrer", "app_in_background", "firebase_feature_rollouts", "customer_type", "firebase_conversion", "firebase_error", "firebase_error_value", "firebase_error_length", "firebase_event_origin", "firebase_screen", "firebase_screen_class", "firebase_screen_id", "firebase_previous_screen", "firebase_previous_class", "firebase_previous_id", "session_number", "session_id"};
    public static final String[] j = {"_c", "_et", "_xt", "_aeid", "_ai", "_err", "_ev", "_el", "_o", "_sn", "_sc", "_si", "_pn", "_pc", "_pi", "_mst", "_ndt", "_nmid", "_nmn", "_nmt", "_nmtid", "_nmc", "_pv", "_po", "_nt", "_uwa", "_pfo", "_sys", "_sysu", "_pin", "_eid", "_epc", "_gn", "_ll", "_i", "_en", "_cis", "_cc", "_dac", "_sno", "_sid", "_cer", "_aib", "_ffr", "_ct", "_c", "_err", "_ev", "_el", "_o", "_sn", "_sc", "_si", "_pn", "_pc", "_pi", "_sno", "_sid"};
    public static final String[] k = {"items"};
    public static final String[] l = {"affiliation", "coupon", "creative_name", "creative_slot", "currency", "_ct", "discount", "index", "item_id", "item_brand", "item_category", "item_category2", "item_category3", "item_category4", "item_category5", "item_list_name", "item_list_id", "item_name", "item_variant", "location_id", "payment_type", "price", "promotion_id", "promotion_name", "quantity", "shipping", "shipping_tier", "tax", "transaction_id", "value", "item_list", "checkout_step", "checkout_option", "item_location_id"};

    static {
        Object obj = null;
        g = new eh(obj, obj, obj, 21, false);
    }

    public static final int A(fi fiVar, Object obj, int i2) {
        int i3 = fiVar.p;
        if (i3 == 0) {
            return -1;
        }
        try {
            int iL = is0.l(i3, i2, fiVar.n);
            if (iL < 0 || nt1.g(obj, fiVar.o[iL])) {
                return iL;
            }
            int i4 = iL + 1;
            while (i4 < i3 && fiVar.n[i4] == i2) {
                if (nt1.g(obj, fiVar.o[i4])) {
                    return i4;
                }
                i4++;
            }
            for (int i5 = iL - 1; i5 >= 0 && fiVar.n[i5] == i2; i5--) {
                if (nt1.g(obj, fiVar.o[i5])) {
                    return i5;
                }
            }
            return ~i4;
        } catch (IndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public static boolean B() {
        if (Build.VERSION.SDK_INT >= 29) {
            return o04.c();
        }
        try {
            if (o == null) {
                n = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                o = Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            return ((Boolean) o.invoke(null, Long.valueOf(n))).booleanValue();
        } catch (Exception e2) {
            z("isTagEnabled", e2);
            return false;
        }
    }

    public static final boolean C(xy1 xy1Var) {
        if (xy1Var.f415u == null) {
            return false;
        }
        xy1 xy1VarU = xy1Var.u();
        return (xy1VarU != null ? xy1VarU.f415u : null) == null || xy1Var.T.b;
    }

    public static final long D(long j2, long j3) {
        return v71.a(x(j2) - x(j3), y(j2) - y(j3));
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ac  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final defpackage.th2 E(defpackage.pe1 r4) {
        /*
            Method dump skipped, instruction units count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ix.E(pe1):th2");
    }

    public static final hi0 F(qi0 qi0Var, hi0 hi0Var) {
        hi0 hi0VarS = s(qi0Var.d(), hi0Var, true);
        zp0 zp0Var = zu0.a;
        return (hi0VarS == zp0Var || hi0VarS.K(w13.s) != null) ? hi0VarS : hi0VarS.F(zp0Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:137:0x021b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long G(int r32, java.lang.String r33, int r34) {
        /*
            Method dump skipped, instruction units count: 831
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ix.G(int, java.lang.String, int):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void H(md2 md2Var, ne1 ne1Var) {
        eo2 eo2Var = md2Var.t;
        if (eo2Var == null) {
            eo2Var = new eo2((co2) md2Var);
            md2Var.t = eo2Var;
        }
        ur2 snapshotObserver = ((q9) w80.S(md2Var)).getSnapshotObserver();
        snapshotObserver.a.c(eo2Var, do2.p, ne1Var);
    }

    public static final long K(long j2, long j3) {
        return v71.a(x(j3) + x(j2), y(j3) + y(j2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x01e0, code lost:
    
        r0 = defpackage.is0.o(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01e4, code lost:
    
        defpackage.is0.r(r2, null);
        r10 = r0;
     */
    /* JADX WARN: Finally extract failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.fw3 L(defpackage.jb3 r31, java.lang.String r32) {
        /*
            Method dump skipped, instruction units count: 522
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ix.L(jb3, java.lang.String):fw3");
    }

    public static ArrayList M(File file) throws IOException {
        Charset charset = k40.a;
        file.getClass();
        charset.getClass();
        ArrayList arrayList = new ArrayList();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), charset));
        try {
            for (String str : new af0(new s70(1, bufferedReader))) {
                str.getClass();
                arrayList.add(str);
            }
            bufferedReader.close();
            return arrayList;
        } finally {
        }
    }

    public static String N(File file) throws IOException {
        Charset charset = k40.a;
        file.getClass();
        charset.getClass();
        InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(file), charset);
        try {
            StringWriter stringWriter = new StringWriter();
            char[] cArr = new char[8192];
            for (int i2 = inputStreamReader.read(cArr); i2 >= 0; i2 = inputStreamReader.read(cArr)) {
                stringWriter.write(cArr, 0, i2);
            }
            String string = stringWriter.toString();
            string.getClass();
            inputStreamReader.close();
            return string;
        } finally {
        }
    }

    public static List O(List list) {
        return list instanceof lp1 ? ((lp1) list).n() : list instanceof y42 ? ((y42) list).n : list instanceof RandomAccess ? new w42(list) : new y42(list);
    }

    public static final ns1 P(l33 l33Var) {
        return new ns1(Math.round(l33Var.a), Math.round(l33Var.b), Math.round(l33Var.c), Math.round(l33Var.d));
    }

    public static final nd2 Q(nd2 nd2Var, boolean z, vf2 vf2Var, n93 n93Var, boolean z2, q93 q93Var, ne1 ne1Var) {
        return nd2Var.c(n93Var != null ? new wg3(ne1Var, n93Var, vf2Var, q93Var, z, z2) : n93Var == null ? new wg3(ne1Var, null, vf2Var, q93Var, z, z2) : vf2Var != null ? wp1.a(kd2.b, vf2Var, n93Var).c(new wg3(ne1Var, null, vf2Var, q93Var, z, z2)) : new qb0(new xg3(n93Var, z, z2, q93Var, ne1Var)));
    }

    public static final bd R(id idVar, int i2) {
        Object next;
        Iterator<T> it = idVar.getLayoutNodeToHolder().entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((xy1) ((Map.Entry) next).getKey()).o == i2) {
                break;
            }
        }
        Map.Entry entry = (Map.Entry) next;
        if (entry != null) {
            return (bd) entry.getValue();
        }
        return null;
    }

    public static int S(int i2) {
        return (int) (((long) Integer.rotateLeft((int) (((long) i2) * (-862048943)), 15)) * 461845907);
    }

    public static ks1 T(ms1 ms1Var, int i2) {
        ms1Var.getClass();
        boolean z = i2 > 0;
        Integer numValueOf = Integer.valueOf(i2);
        if (!z) {
            throw new IllegalArgumentException("Step must be positive, was: " + numValueOf + '.');
        }
        int i3 = ms1Var.n;
        int i4 = ms1Var.o;
        if (ms1Var.p <= 0) {
            i2 = -i2;
        }
        return new ks1(i3, i4, i2);
    }

    public static final void U(int i2, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("Error code: " + i2);
        sb.append(", message: ".concat(str));
        throw new SQLException(sb.toString());
    }

    public static final long V(float f2, long j2) {
        return v71.a(x(j2) * f2, y(j2) * f2);
    }

    public static final String W(int i2) {
        if (i2 == 0) {
            return "android.widget.Button";
        }
        if (i2 == 1) {
            return "android.widget.CheckBox";
        }
        if (i2 == 3) {
            return "android.widget.RadioButton";
        }
        if (i2 == 5) {
            return "android.widget.ImageView";
        }
        if (i2 == 6) {
            return "android.widget.Spinner";
        }
        if (i2 == 7) {
            return "android.widget.NumberPicker";
        }
        return null;
    }

    public static final long X(long j2, uv2 uv2Var) {
        long j3 = uv2Var.j(x(j2), y(j2));
        return v71.a(Float.intBitsToFloat((int) (j3 >> 32)), Float.intBitsToFloat((int) (j3 & 4294967295L)));
    }

    public static String Y(String str) {
        return str.length() <= 127 ? str : str.substring(0, 127);
    }

    public static final void Z() {
        throw new UnsupportedOperationException();
    }

    public static final void a(final ne1 ne1Var, final ne1 ne1Var2, final y84 y84Var, final boolean z, ag1 ag1Var, final int i2) {
        Object obj;
        xr xrVar;
        int i3;
        dh0 dh0Var;
        final Context context;
        qi0 qi0Var;
        final pg2 pg2Var;
        Object j4Var;
        final ne1 ne1Var3;
        pg2 pg2Var2;
        n8 n8Var;
        pg2 pg2Var3;
        io3 io3Var;
        ne1Var.getClass();
        ne1Var2.getClass();
        ag1Var.X(2080793962);
        int i4 = i2 | (ag1Var.h(ne1Var) ? 4 : 2) | (ag1Var.h(ne1Var2) ? 32 : 16) | (ag1Var.d(y84Var == null ? -1 : y84Var.ordinal()) ? 256 : 128);
        if (ag1Var.N(i4 & 1, (i4 & 1171) != 1170)) {
            Object objK = ag1Var.K();
            Object obj2 = rb0.a;
            if (objK == obj2) {
                String string = UUID.randomUUID().toString();
                string.getClass();
                objK = zs3.X0(4, string);
                ag1Var.g0(objK);
            }
            String str = (String) objK;
            Context context2 = (Context) ag1Var.j(ea.b);
            Object objK2 = ag1Var.K();
            if (objK2 == obj2) {
                objK2 = ca.A(null);
                ag1Var.g0(objK2);
            }
            pg2 pg2Var4 = (pg2) objK2;
            Object objK3 = ag1Var.K();
            if (objK3 == obj2) {
                objK3 = ca.A(null);
                ag1Var.g0(objK3);
            }
            pg2 pg2Var5 = (pg2) objK3;
            boolean z2 = (i4 & 896) == 256;
            Object objK4 = ag1Var.K();
            if (z2 || objK4 == obj2) {
                y3 y3Var = z3.a;
                y84Var.getClass();
                int iOrdinal = y84Var.ordinal();
                if (iOrdinal == 0) {
                    obj = z3.a;
                } else if (iOrdinal == 1) {
                    obj = z3.d;
                } else if (iOrdinal == 2) {
                    obj = z3.c;
                } else if (iOrdinal == 3) {
                    obj = z3.e;
                } else {
                    if (iOrdinal != 4) {
                        p61.x();
                        return;
                    }
                    obj = z3.b;
                }
                objK4 = obj;
                ag1Var.g0(objK4);
            }
            y3 y3Var2 = (y3) objK4;
            ra3 ra3Var = ez3.a;
            y84 y84Var2 = y3Var2.a;
            y84Var2.toString();
            ra3Var.getClass();
            ra3.c(new Object[0]);
            Object objK5 = ag1Var.K();
            if (objK5 == obj2) {
                objK5 = zf5.x(ag1Var);
                ag1Var.g0(objK5);
            }
            qi0 qi0Var2 = (qi0) objK5;
            boolean zD = ag1Var.d(y84Var2.ordinal());
            Object objK6 = ag1Var.K();
            if (zD || objK6 == obj2) {
                Context applicationContext = context2.getApplicationContext();
                applicationContext.getClass();
                fn3 fn3Var = (fn3) gg4.w(applicationContext, fn3.class);
                n1 n1VarV = mt1.v(context2, y84Var2);
                ps psVarI = mt1.I(context2, y84Var2);
                Context applicationContext2 = context2.getApplicationContext();
                applicationContext2.getClass();
                fn3 fn3Var2 = (fn3) gg4.w(applicationContext2, fn3.class);
                int iOrdinal2 = y84Var2.ordinal();
                if (iOrdinal2 == 0) {
                    xrVar = (p50) ((vl0) fn3Var2).e.get();
                } else if (iOrdinal2 == 1) {
                    xrVar = (gg1) ((vl0) fn3Var2).h.get();
                } else if (iOrdinal2 == 2) {
                    xrVar = (lf) ((vl0) fn3Var2).g.get();
                } else if (iOrdinal2 == 3) {
                    xrVar = (f70) ((vl0) fn3Var2).i.get();
                } else {
                    if (iOrdinal2 != 4) {
                        p61.x();
                        return;
                    }
                    xrVar = (vh0) ((vl0) fn3Var2).f.get();
                }
                Object a4Var = new a4(n1VarV, psVarI, xrVar, (n8) ((vl0) fn3Var).c.get());
                ag1Var.g0(a4Var);
                objK6 = a4Var;
            }
            a4 a4Var2 = (a4) objK6;
            final n1 n1Var = a4Var2.a;
            final ps psVar = a4Var2.b;
            xr xrVar2 = a4Var2.c;
            n8 n8Var2 = a4Var2.d;
            boolean zF = ag1Var.f(xrVar2) | ag1Var.f(n1Var);
            Object objK7 = ag1Var.K();
            if (zF || objK7 == obj2) {
                i3 = i4;
                int i5 = 0;
                objK7 = qj0.Y(qj0.D(new c91(xrVar2.f, n1Var.a(), new u4(3, null, i5), i5)), qi0Var2, nm3.a, null);
                ag1Var.g0(objK7);
            } else {
                i3 = i4;
            }
            final ur3 ur3Var = (ur3) objK7;
            boolean zH = ag1Var.h(n8Var2) | ag1Var.h(y3Var2);
            Object objK8 = ag1Var.K();
            if (zH || objK8 == obj2) {
                dh0Var = null;
                objK8 = new p4(n8Var2, y3Var2, dh0Var, 0);
                ag1Var.g0(objK8);
            } else {
                dh0Var = null;
            }
            zf5.c((df1) objK8, ag1Var, y84Var2);
            final y3 y3Var3 = y3Var2;
            dh0 dh0Var2 = dh0Var;
            pg2 pg2VarG = ca.g(n1Var.a(), w3.l, null, ag1Var, 48, 2);
            ((w3) pg2VarG.getValue()).getClass();
            String strE = ((w3) pg2VarG.getValue()).e();
            if (strE != null) {
                zs3.X0(80, strE);
            }
            ((w3) pg2VarG.getValue()).getClass();
            ((w3) pg2VarG.getValue()).getClass();
            ra3.c(new Object[0]);
            w3 w3Var = (w3) pg2VarG.getValue();
            boolean zH2 = ag1Var.h(y3Var3) | ag1Var.f(pg2VarG);
            Object objK9 = ag1Var.K();
            if (zH2 || objK9 == obj2) {
                context = context2;
                Object q4Var = new q4(y3Var3, str, pg2VarG, dh0Var2, 0);
                qi0Var = qi0Var2;
                str = str;
                pg2Var = pg2VarG;
                ag1Var.g0(q4Var);
                objK9 = q4Var;
            } else {
                qi0Var = qi0Var2;
                context = context2;
                pg2Var = pg2VarG;
            }
            zf5.c((df1) objK9, ag1Var, w3Var);
            Object objK10 = ag1Var.K();
            if (objK10 == obj2) {
                objK10 = new us0(context);
                ag1Var.g0(objK10);
            }
            Object objK11 = ag1Var.K();
            if (objK11 == obj2) {
                objK11 = ca.A(dh0Var2);
                ag1Var.g0(objK11);
            }
            final pg2 pg2Var6 = (pg2) objK11;
            Object objK12 = ag1Var.K();
            if (objK12 == obj2) {
                objK12 = ca.A(Boolean.FALSE);
                ag1Var.g0(objK12);
            }
            final pg2 pg2Var7 = (pg2) objK12;
            Object objK13 = ag1Var.K();
            if (objK13 == obj2) {
                objK13 = ca.A(Boolean.FALSE);
                ag1Var.g0(objK13);
            }
            final pg2 pg2Var8 = (pg2) objK13;
            Object objK14 = ag1Var.K();
            if (objK14 == obj2) {
                objK14 = ca.A(Boolean.FALSE);
                ag1Var.g0(objK14);
            }
            final pg2 pg2Var9 = (pg2) objK14;
            Object objK15 = ag1Var.K();
            if (objK15 == obj2) {
                objK15 = new io3();
                ag1Var.g0(objK15);
            }
            io3 io3Var2 = (io3) objK15;
            Object objK16 = ag1Var.K();
            if (objK16 == obj2) {
                objK16 = ca.A(dh0Var2);
                ag1Var.g0(objK16);
            }
            final pg2 pg2Var10 = (pg2) objK16;
            boolean z3 = ((WebView) pg2Var4.getValue()) != null;
            boolean zH3 = ag1Var.h(y3Var3) | ((i3 & 14) == 4);
            Object objK17 = ag1Var.K();
            if (zH3 || objK17 == obj2) {
                ne1Var3 = ne1Var;
                pg2Var2 = pg2Var5;
                n8Var = n8Var2;
                j4Var = new j4(str, y3Var3, ne1Var3, pg2Var2, pg2Var4);
                y3Var3 = y3Var3;
                pg2Var3 = pg2Var4;
                ag1Var.g0(j4Var);
            } else {
                j4Var = objK17;
                pg2Var3 = pg2Var4;
                pg2Var2 = pg2Var5;
                ne1Var3 = ne1Var;
                n8Var = n8Var2;
            }
            n44.C(z3, (ne1) j4Var, ag1Var, 0, 0);
            Object objK18 = ag1Var.K();
            if (objK18 == obj2) {
                io3Var = io3Var2;
                Object k4Var = new k4(str, pg2Var10, pg2Var2, pg2Var3, 0);
                ag1Var.g0(k4Var);
                objK18 = k4Var;
            } else {
                io3Var = io3Var2;
            }
            zf5.a(t64.a, (pe1) objK18, ag1Var);
            ka0 ka0VarU = qj0.U(93528878, new l4(0, y3Var3, ne1Var3), ag1Var);
            ka0 ka0VarU2 = qj0.U(-340976720, new sp0(1, io3Var), ag1Var);
            final pg2 pg2Var11 = pg2Var3;
            final io3 io3Var3 = io3Var;
            final pg2 pg2Var12 = pg2Var2;
            final qi0 qi0Var3 = qi0Var;
            final String str2 = str;
            final n8 n8Var3 = n8Var;
            n44.H(null, ka0VarU, null, ka0VarU2, null, 0, 0L, 0L, null, qj0.U(814198457, new ff1() { // from class: m4
                /* JADX WARN: Removed duplicated region for block: B:75:0x030c  */
                @Override // defpackage.ff1
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object d(java.lang.Object r26, java.lang.Object r27, java.lang.Object r28) {
                    /*
                        Method dump skipped, instruction units count: 826
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: defpackage.m4.d(java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
                }
            }, ag1Var), ag1Var, 805309488, 501);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new df1(ne1Var2, y84Var, z, i2) { // from class: n4
                public final /* synthetic */ ne1 o;
                public final /* synthetic */ y84 p;
                public final /* synthetic */ boolean q;

                @Override // defpackage.df1
                public final Object f(Object obj3, Object obj4) {
                    ((Integer) obj4).getClass();
                    int iF0 = qj0.f0(3073);
                    ix.a(this.n, this.o, this.p, this.q, (ag1) obj3, iF0);
                    return t64.a;
                }
            };
        }
    }

    public static ms1 a0(int i2, int i3) {
        if (i3 > Integer.MIN_VALUE) {
            return new ms1(i2, i3 - 1, 1);
        }
        ms1 ms1Var = ms1.q;
        return ms1.q;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void b(String str, String str2, String str3, ne1 ne1Var, ag1 ag1Var, int i2) {
        int i3;
        bw bwVar;
        aw awVar;
        oh ohVar;
        int i4;
        ph phVar;
        ag1 ag1Var2;
        fd fdVar;
        l9 l9Var;
        kd2 kd2Var;
        fd fdVar2;
        ne1 ne1Var2;
        fd fdVar3;
        fd fdVar4;
        ag1 ag1Var3;
        boolean z;
        fd fdVar5;
        ag1 ag1Var4;
        boolean z2;
        ag1 ag1Var5;
        o23 o23Var;
        ag1 ag1Var6 = ag1Var;
        bw bwVar2 = mj1.y;
        aw awVar2 = mj1.z;
        ag1Var6.X(-367893112);
        int i5 = i2 | (ag1Var6.f(str) ? 4 : 2) | (ag1Var6.f(str2) ? 32 : 16) | (ag1Var6.f(str3) ? 256 : 128) | (ag1Var6.h(ne1Var) ? 2048 : 1024);
        if (ag1Var6.N(i5 & 1, (i5 & 1171) != 1170)) {
            ra3 ra3Var = ez3.a;
            if (str3 != null) {
                zs3.X0(80, str3);
            }
            ra3Var.getClass();
            ra3.c(new Object[0]);
            u51 u51Var = on3.b;
            oh ohVar2 = th.c;
            k80 k80VarA = i80.a(ohVar2, awVar2, ag1Var6, 0);
            int iHashCode = Long.hashCode(ag1Var6.T);
            hu2 hu2VarL = ag1Var6.l();
            nd2 nd2VarH = is0.H(ag1Var6, u51Var);
            lb0.c.getClass();
            ne1 ne1Var3 = kb0.b;
            ag1Var6.Z();
            if (ag1Var6.S) {
                ag1Var6.k(ne1Var3);
            } else {
                ag1Var6.j0();
            }
            fd fdVar6 = kb0.f;
            ht4.D(fdVar6, ag1Var6, k80VarA);
            fd fdVar7 = kb0.e;
            ht4.D(fdVar7, ag1Var6, hu2VarL);
            Integer numValueOf = Integer.valueOf(iHashCode);
            fd fdVar8 = kb0.g;
            ht4.D(fdVar8, ag1Var6, numValueOf);
            l9 l9Var2 = kb0.h;
            ht4.y(ag1Var6, l9Var2);
            fd fdVar9 = kb0.d;
            ht4.D(fdVar9, ag1Var6, nd2VarH);
            nd2 nd2VarN = is0.N(on3.a, 20.0f, 12.0f, 20.0f, 12.0f);
            ph phVar2 = th.a;
            cb3 cb3VarA = bb3.a(phVar2, bwVar2, ag1Var6, 48);
            int iHashCode2 = Long.hashCode(ag1Var6.T);
            hu2 hu2VarL2 = ag1Var6.l();
            nd2 nd2VarH2 = is0.H(ag1Var6, nd2VarN);
            ag1Var6.Z();
            if (ag1Var6.S) {
                ag1Var6.k(ne1Var3);
            } else {
                ag1Var6.j0();
            }
            ht4.D(fdVar6, ag1Var6, cb3VarA);
            ht4.D(fdVar7, ag1Var6, hu2VarL2);
            di0.C(iHashCode2, ag1Var6, fdVar8, ag1Var6, l9Var2);
            ht4.D(fdVar9, ag1Var6, nd2VarH2);
            kd2 kd2Var2 = kd2.b;
            if (str3 == null || str3.length() == 0) {
                ag1Var6.W(-952485265);
                ra3.c(new Object[0]);
                nd2 nd2VarC = on3.c(kd2Var2, 28.0f);
                na3 na3Var = oa3.a;
                long j2 = ((n50) ag1Var6.j(gy3.c)).g;
                ka0 ka0VarU = qj0.U(1074267727, new f4(str2, str), ag1Var6);
                i3 = 0;
                bwVar = bwVar2;
                awVar = awVar2;
                ohVar = ohVar2;
                i4 = i5;
                phVar = phVar2;
                ag1 ag1Var7 = ag1Var;
                wu3.a(nd2VarC, na3Var, j2, 0L, 0.0f, null, ka0VarU, ag1Var7, 12582918, 120);
                ag1Var7.p(false);
                ag1Var2 = ag1Var7;
            } else {
                ag1Var6.W(-952887149);
                "AccountScreen: Rendering AsyncImage with picture URL: ".concat(zs3.X0(80, str3));
                ra3.c(new Object[0]);
                nd2 nd2VarC0 = n44.c0(on3.c(kd2Var2, 28.0f), oa3.a);
                cw cwVar = mj1.s;
                Context context = (Context) ag1Var6.j(ea.b);
                AtomicReference atomicReference = gn3.a;
                Object obj = atomicReference.get();
                o23 o23VarA = null;
                o23 o23Var2 = obj instanceof o23 ? (o23) obj : null;
                if (o23Var2 == null) {
                    loop0: while (true) {
                        Object obj2 = atomicReference.get();
                        if (obj2 instanceof o23) {
                            o23Var = o23VarA;
                            o23VarA = (o23) obj2;
                        } else {
                            if (o23VarA == null) {
                                Context applicationContext = context.getApplicationContext();
                                i3 i3Var = in3.a;
                                o23VarA = hn3.a(applicationContext);
                            }
                            o23Var = o23VarA;
                        }
                        while (!atomicReference.compareAndSet(obj2, o23VarA)) {
                            if (atomicReference.get() != obj2) {
                                break;
                            }
                        }
                        o23VarA = o23Var;
                    }
                    o23Var2 = o23VarA;
                }
                nt1.a(new dj(str3, (si) ag1Var6.j(u52.a), o23Var2), nd2VarC0, zi.H, cwVar, lg0.a, ag1Var6, 48, 0);
                ag1Var6.p(false);
                bwVar = bwVar2;
                i3 = 0;
                awVar = awVar2;
                ohVar = ohVar2;
                i4 = i5;
                phVar = phVar2;
                ag1Var2 = ag1Var6;
            }
            mt1.f(ag1Var2, on3.f(10.0f));
            nz1 nz1Var = new nz1(1.0f, true);
            k80 k80VarA2 = i80.a(ohVar, awVar, ag1Var2, i3);
            int iHashCode3 = Long.hashCode(ag1Var2.T);
            hu2 hu2VarL3 = ag1Var2.l();
            nd2 nd2VarH3 = is0.H(ag1Var2, nz1Var);
            lb0.c.getClass();
            ne1 ne1Var4 = kb0.b;
            ag1Var2.Z();
            if (ag1Var2.S) {
                ag1Var2.k(ne1Var4);
            } else {
                ag1Var2.j0();
            }
            fd fdVar10 = kb0.f;
            ht4.D(fdVar10, ag1Var2, k80VarA2);
            fd fdVar11 = kb0.e;
            ht4.D(fdVar11, ag1Var2, hu2VarL3);
            Integer numValueOf2 = Integer.valueOf(iHashCode3);
            fd fdVar12 = kb0.g;
            ht4.D(fdVar12, ag1Var2, numValueOf2);
            l9 l9Var3 = kb0.h;
            ht4.y(ag1Var2, l9Var3);
            fd fdVar13 = kb0.d;
            ht4.D(fdVar13, ag1Var2, nd2VarH3);
            if (str2 == null || str2.length() == 0) {
                fdVar = fdVar11;
                l9Var = l9Var3;
                boolean z3 = i3;
                kd2Var = kd2Var2;
                fdVar2 = fdVar12;
                ne1Var2 = ne1Var4;
                fdVar3 = fdVar10;
                fdVar4 = fdVar13;
                ag1Var2.W(-696539062);
                ag1Var2.p(z3);
                z = z3;
                ag1Var3 = ag1Var2;
            } else {
                ag1Var2.W(-696913449);
                h03 h03Var = wa2.a;
                l9Var = l9Var3;
                fdVar4 = fdVar13;
                fdVar3 = fdVar10;
                kd2Var = kd2Var2;
                fdVar2 = fdVar12;
                ne1Var2 = ne1Var4;
                fdVar = fdVar11;
                boolean z4 = i3;
                lx3.b(str2, null, ((ua2) ag1Var2.j(h03Var)).a.q, 0L, null, null, 0L, null, on4.D(25), 2, false, 1, 0, ((ua2) ag1Var2.j(h03Var)).b.j, ag1Var, (i4 >> 3) & 14, 25008, 108538);
                ag1 ag1Var8 = ag1Var;
                ag1Var8.p(z4);
                z = z4;
                ag1Var3 = ag1Var8;
            }
            if (str == null || str.length() == 0) {
                fdVar5 = fdVar;
                ag1Var3.W(-696077782);
                ag1Var3.p(z);
                z2 = z;
                ag1Var4 = ag1Var3;
            } else {
                ag1Var3.W(-696460818);
                h03 h03Var2 = wa2.a;
                fdVar5 = fdVar;
                lx3.b(str, null, ((ua2) ag1Var3.j(h03Var2)).a.s, 0L, null, null, 0L, null, on4.D(23), 2, false, 1, 0, ((ua2) ag1Var3.j(h03Var2)).b.k, ag1Var, i4 & 14, 25008, 108538);
                ag1 ag1Var9 = ag1Var;
                z2 = false;
                ag1Var9.p(false);
                ag1Var4 = ag1Var9;
            }
            if ((str2 == null || str2.length() == 0) && (str == null || str.length() == 0)) {
                ag1Var4.W(-695979729);
                String strO = on4.O(R.string.account_signed_in, ag1Var4);
                h03 h03Var3 = wa2.a;
                lx3.b(strO, null, ((ua2) ag1Var4.j(h03Var3)).a.q, 0L, null, null, 0L, null, on4.D(25), 0, false, 0, 0, ((ua2) ag1Var4.j(h03Var3)).b.j, ag1Var, 0, 48, 129018);
                ag1 ag1Var10 = ag1Var;
                ag1Var10.p(false);
                ag1Var5 = ag1Var10;
            } else {
                ag1Var4.W(-695689910);
                ag1Var4.p(z2);
                ag1Var5 = ag1Var4;
            }
            ag1Var5.p(true);
            ag1Var5.p(true);
            kd2 kd2Var3 = kd2Var;
            nd2 nd2VarL = is0.L(kd2Var3, 16.0f, 8.0f);
            h03 h03Var4 = gy3.c;
            tv4.e(nd2VarL, 0.79f, ((n50) ag1Var5.j(h03Var4)).v, ag1Var5, 48, 0);
            nd2 nd2VarL2 = is0.L(tv4.n(on3.a, ne1Var), 24.0f, 12.0f);
            cb3 cb3VarA2 = bb3.a(phVar, bwVar, ag1Var5, 48);
            int iHashCode4 = Long.hashCode(ag1Var5.T);
            hu2 hu2VarL4 = ag1Var5.l();
            nd2 nd2VarH4 = is0.H(ag1Var5, nd2VarL2);
            ag1Var5.Z();
            if (ag1Var5.S) {
                ag1Var5.k(ne1Var2);
            } else {
                ag1Var5.j0();
            }
            ht4.D(fdVar3, ag1Var5, cb3VarA2);
            ht4.D(fdVar5, ag1Var5, hu2VarL4);
            di0.C(iHashCode4, ag1Var5, fdVar2, ag1Var5, l9Var);
            ht4.D(fdVar4, ag1Var5, nd2VarH4);
            qn1.b(kt4.W(R.drawable.anthropicon_logout, ag1Var5), null, on3.c(kd2Var3, 24.0f), ((n50) ag1Var5.j(h03Var4)).x, ag1Var5, 440, 0);
            mt1.f(ag1Var5, on3.f(10.0f));
            lx3.b(on4.O(R.string.account_sign_out, ag1Var5), null, ((n50) ag1Var5.j(h03Var4)).x, 0L, null, null, 0L, null, on4.D(25), 0, false, 0, 0, ((ua2) ag1Var5.j(wa2.a)).b.j, ag1Var, 0, 48, 129018);
            ag1Var6 = ag1Var;
            ag1Var6.p(true);
            ag1Var6.p(true);
        } else {
            ag1Var6.Q();
        }
        c33 c33VarR = ag1Var6.r();
        if (c33VarR != null) {
            c33VarR.d = new g4(str, str2, str3, ne1Var, i2, 0);
        }
    }

    public static final o64 b0(dh0 dh0Var, hi0 hi0Var, Object obj) {
        o64 o64Var = null;
        if ((dh0Var instanceof si0) && hi0Var.K(u20.p) != null) {
            si0 si0VarC = (si0) dh0Var;
            while (true) {
                if ((si0VarC instanceof uu0) || (si0VarC = si0VarC.c()) == null) {
                    break;
                }
                if (si0VarC instanceof o64) {
                    o64Var = (o64) si0VarC;
                    break;
                }
            }
            if (o64Var != null) {
                o64Var.w0(hi0Var, obj);
            }
        }
        return o64Var;
    }

    public static zy c(int i2, int i3, vy vyVar) {
        int i4 = i3 & 2;
        vy vyVar2 = vy.n;
        if (i4 != 0) {
            vyVar = vyVar2;
        }
        if (i2 == -2) {
            if (vyVar != vyVar2) {
                return new od0(1, vyVar);
            }
            n30.b.getClass();
            return new zy(m30.b);
        }
        if (i2 != -1) {
            return i2 != 0 ? i2 != Integer.MAX_VALUE ? vyVar == vyVar2 ? new zy(i2) : new od0(i2, vyVar) : new zy(Api.BaseClientBuilder.API_PRIORITY_OTHER) : vyVar == vyVar2 ? new zy(0) : new od0(1, vyVar);
        }
        if (vyVar == vyVar2) {
            return new od0(1, vy.o);
        }
        k21.f("CONFLATED capacity cannot be used with non-default onBufferOverflow");
        return null;
    }

    public static void c0(File file, String str) throws IOException {
        Charset charset = k40.a;
        file.getClass();
        charset.getClass();
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            d0(fileOutputStream, str, charset);
            fileOutputStream.close();
        } finally {
        }
    }

    public static z80 d() {
        z80 z80Var = new z80(true);
        z80Var.Q(null);
        return z80Var;
    }

    public static final void d0(FileOutputStream fileOutputStream, String str, Charset charset) throws IOException {
        if (str.length() < 16384) {
            byte[] bytes = str.getBytes(charset);
            bytes.getClass();
            fileOutputStream.write(bytes);
            return;
        }
        CharsetEncoder charsetEncoderNewEncoder = charset.newEncoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        CharsetEncoder charsetEncoderOnUnmappableCharacter = charsetEncoderNewEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction);
        CharBuffer charBufferAllocate = CharBuffer.allocate(8192);
        charsetEncoderOnUnmappableCharacter.getClass();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8192 * ((int) Math.ceil(charsetEncoderOnUnmappableCharacter.maxBytesPerChar())));
        byteBufferAllocate.getClass();
        int i2 = 0;
        int i3 = 0;
        while (i2 < str.length()) {
            int iMin = Math.min(8192 - i3, str.length() - i2);
            int i4 = i2 + iMin;
            char[] cArrArray = charBufferAllocate.array();
            cArrArray.getClass();
            str.getChars(i2, i4, cArrArray, i3);
            charBufferAllocate.limit(iMin + i3);
            i3 = 1;
            if (!charsetEncoderOnUnmappableCharacter.encode(charBufferAllocate, byteBufferAllocate, i4 == str.length()).isUnderflow()) {
                k21.n("Check failed.");
                return;
            }
            fileOutputStream.write(byteBufferAllocate.array(), 0, byteBufferAllocate.position());
            if (charBufferAllocate.position() != charBufferAllocate.limit()) {
                charBufferAllocate.put(0, charBufferAllocate.get());
            } else {
                i3 = 0;
            }
            charBufferAllocate.clear();
            byteBufferAllocate.clear();
            i2 = i4;
        }
    }

    public static final void e(y84 y84Var, ag1 ag1Var, int i2) {
        ag1 ag1Var2;
        ag1Var.X(-1008358938);
        int i3 = (ag1Var.d(y84Var.ordinal()) ? 4 : 2) | i2;
        if (ag1Var.N(i3 & 1, (i3 & 3) != 2)) {
            nd2 nd2VarJ = bi4.j(on3.b, ((ua2) ag1Var.j(wa2.a)).a.n, k75.d);
            db2 db2VarD = qx.d(mj1.s, false);
            int iHashCode = Long.hashCode(ag1Var.T);
            hu2 hu2VarL = ag1Var.l();
            nd2 nd2VarH = is0.H(ag1Var, nd2VarJ);
            lb0.c.getClass();
            ic0 ic0Var = kb0.b;
            ag1Var.Z();
            if (ag1Var.S) {
                ag1Var.k(ic0Var);
            } else {
                ag1Var.j0();
            }
            ht4.D(kb0.f, ag1Var, db2VarD);
            ht4.D(kb0.e, ag1Var, hu2VarL);
            ht4.D(kb0.g, ag1Var, Integer.valueOf(iHashCode));
            ht4.y(ag1Var, kb0.h);
            ht4.D(kb0.d, ag1Var, nd2VarH);
            ag1Var2 = ag1Var;
            zf5.e(null, k30.u(y84Var, ag1Var), null, ag1Var2, 0);
            ag1Var2.p(true);
        } else {
            ag1Var2 = ag1Var;
            ag1Var2.Q();
        }
        c33 c33VarR = ag1Var2.r();
        if (c33VarR != null) {
            c33VarR.d = new i4(y84Var, i2);
        }
    }

    public static final boolean f(bh3 bh3Var) {
        oh3 oh3Var = lh3.s;
        kg2 kg2Var = bh3Var.n;
        Object objG = kg2Var.g(oh3Var);
        if (objG == null) {
            objG = null;
        }
        if (nt1.g(objG, mj1.F)) {
            return false;
        }
        return kg2Var.b(ah3.g) || kg2Var.b(ah3.h);
    }

    public static void g(File file, String str) throws IOException {
        Charset charset = k40.a;
        file.getClass();
        charset.getClass();
        FileOutputStream fileOutputStream = new FileOutputStream(file, true);
        try {
            d0(fileOutputStream, str, charset);
            fileOutputStream.close();
        } finally {
        }
    }

    public static float h(float f2, float f3) {
        return f2 < f3 ? f3 : f2;
    }

    public static double i(double d2, double d3, double d4) {
        if (d3 <= d4) {
            return d2 < d3 ? d3 : d2 > d4 ? d4 : d2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + d4 + " is less than minimum " + d3 + '.');
    }

    public static float j(float f2, float f3, float f4) {
        if (f3 <= f4) {
            return f2 < f3 ? f3 : f2 > f4 ? f4 : f2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f4 + " is less than minimum " + f3 + '.');
    }

    public static int k(int i2, int i3, int i4) {
        if (i3 <= i4) {
            return i2 < i3 ? i3 : i2 > i4 ? i4 : i2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i4 + " is less than minimum " + i3 + '.');
    }

    public static long l(long j2, long j3, long j4) {
        if (j3 <= j4) {
            return j2 < j3 ? j3 : j2 > j4 ? j4 : j2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j4 + " is less than minimum " + j3 + '.');
    }

    public static void m(WebView webView, sc4 sc4Var, ur3 ur3Var, y3 y3Var, sc4 sc4Var2, t3 t3Var, int i2) {
        if ((i2 & 256) != 0) {
            sc4Var2 = null;
        }
        if ((i2 & 512) != 0) {
            t3Var = null;
        }
        webView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        y84 y84Var = y3Var.a;
        boolean z = y84Var == y84.t || y84Var == y84.s;
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setAllowFileAccess(true);
        String userAgentString = settings.getUserAgentString();
        userAgentString.getClass();
        String strW0 = gt3.w0(gt3.w0(userAgentString, "; wv", ""), "Version/4.0 ", "");
        if (z) {
            settings.setUserAgentString(strW0);
            ez3.a.getClass();
            ra3.c(new Object[0]);
        } else {
            String property = System.getProperty("http.agent");
            ez3.a.getClass();
            ra3.c(new Object[0]);
            if (property == null || zs3.I0(property)) {
                "AccountScreen.configureCommonSettings: System User Agent is invalid, using fallback: ".concat(strW0);
                ra3.c(new Object[0]);
            } else {
                strW0 = property;
            }
            settings.setUserAgentString(strW0);
        }
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptCookie(true);
        cookieManager.setAcceptThirdPartyCookies(webView, true);
        if (sc4Var != null) {
            webView.addJavascriptInterface(sc4Var, sc4Var.a());
            ra3 ra3Var = ez3.a;
            webView.hashCode();
            y84Var.toString();
            ra3Var.getClass();
            ra3.c(new Object[0]);
        } else {
            ra3 ra3Var2 = ez3.a;
            y84Var.toString();
            ra3Var2.getClass();
            ra3.c(new Object[0]);
        }
        if (sc4Var2 != null) {
            webView.addJavascriptInterface(sc4Var2, sc4Var2.a());
            ez3.a.getClass();
            ra3.c(new Object[0]);
        }
        webView.setWebViewClient(new w4(y3Var, ur3Var, new u33(), t3Var));
    }

    public static final long o(float f2, long j2) {
        return v71.a(x(j2) / f2, y(j2) / f2);
    }

    public static final float p(long j2, long j3) {
        return (y(j3) * y(j2)) + (x(j3) * x(j2));
    }

    public static final void r(jb3 jb3Var, String str) {
        jb3Var.getClass();
        pb3 pb3VarK0 = jb3Var.k0(str);
        try {
            pb3VarK0.c0();
            is0.r(pb3VarK0, null);
        } finally {
        }
    }

    public static final hi0 s(hi0 hi0Var, hi0 hi0Var2, boolean z) {
        Boolean bool = Boolean.FALSE;
        int i2 = 1;
        boolean zBooleanValue = ((Boolean) hi0Var.R(new ei0(i2), bool)).booleanValue();
        boolean zBooleanValue2 = ((Boolean) hi0Var2.R(new ei0(i2), bool)).booleanValue();
        if (!zBooleanValue && !zBooleanValue2) {
            return hi0Var.F(hi0Var2);
        }
        ei0 ei0Var = new ei0(2);
        d01 d01Var = d01.n;
        hi0 hi0Var3 = (hi0) hi0Var.R(ei0Var, d01Var);
        Object objR = hi0Var2;
        if (zBooleanValue2) {
            objR = hi0Var2.R(new ei0(3), d01Var);
        }
        return hi0Var3.F((hi0) objR);
    }

    public static final so1 t() {
        so1 so1Var = m;
        if (so1Var != null) {
            return so1Var;
        }
        ro1 ro1Var = new ro1("Filled.Delete", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
        int i2 = ea4.a;
        sp3 sp3Var = new sp3(t70.b);
        ct2 ct2Var = new ct2();
        ct2Var.h(6.0f, 19.0f);
        ct2Var.c(0.0f, 1.1f, 0.9f, 2.0f, 2.0f, 2.0f);
        ct2Var.e(8.0f);
        ct2Var.c(1.1f, 0.0f, 2.0f, -0.9f, 2.0f, -2.0f);
        ct2Var.l(7.0f);
        ct2Var.d(6.0f);
        ct2Var.m(12.0f);
        ct2Var.a();
        ct2Var.h(19.0f, 4.0f);
        ct2Var.e(-3.5f);
        ct2Var.g(-1.0f, -1.0f);
        ct2Var.e(-5.0f);
        ct2Var.g(-1.0f, 1.0f);
        ct2Var.d(5.0f);
        ct2Var.m(2.0f);
        ct2Var.e(14.0f);
        ct2Var.l(4.0f);
        ct2Var.a();
        ro1.a(ro1Var, ct2Var.n, sp3Var);
        so1 so1VarB = ro1Var.b();
        m = so1VarB;
        return so1VarB;
    }

    public static final long u(long j2) {
        float fSqrt = (float) Math.sqrt((y(j2) * y(j2)) + (x(j2) * x(j2)));
        if (fSqrt > 0.0f) {
            return o(fSqrt, j2);
        }
        k21.f("Can't get the direction of a 0-length vector");
        return 0L;
    }

    public static final lx1 v(lx1 lx1Var) {
        lx1Var.getClass();
        return lx1Var.d().h() ? lx1Var : new kn2(lx1Var);
    }

    public static final ox3 w(bh3 bh3Var) {
        pe1 pe1Var;
        ArrayList arrayList = new ArrayList();
        Object objG = bh3Var.n.g(ah3.a);
        if (objG == null) {
            objG = null;
        }
        o2 o2Var = (o2) objG;
        if (o2Var == null || (pe1Var = (pe1) o2Var.b) == null || !((Boolean) pe1Var.k(arrayList)).booleanValue()) {
            return null;
        }
        return (ox3) arrayList.get(0);
    }

    public static final float x(long j2) {
        return Float.intBitsToFloat((int) (j2 >> 32));
    }

    public static final float y(long j2) {
        return Float.intBitsToFloat((int) (j2 & 4294967295L));
    }

    public static void z(String str, Exception exc) {
        if (exc instanceof InvocationTargetException) {
            Throwable cause = exc.getCause();
            if (!(cause instanceof RuntimeException)) {
                throw new RuntimeException(cause);
            }
            throw ((RuntimeException) cause);
        }
        Log.v("Trace", "Unable to call " + str + " via reflection", exc);
    }

    public abstract void I(Throwable th);

    public abstract void J(qd1 qd1Var);

    public abstract String n(byte[] bArr, int i2, int i3);

    public abstract int q(String str, byte[] bArr, int i2, int i3);
}
