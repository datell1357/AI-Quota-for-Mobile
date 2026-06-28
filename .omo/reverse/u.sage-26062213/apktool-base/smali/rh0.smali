.class public final Lrh0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lqh0;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lsh0;


# direct methods
.method public constructor <init>(Lsh0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lrh0;->b:Lsh0;

    .line 5
    .line 6
    iput-object p2, p0, Lrh0;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Lrl1;)Lnh0;
    .locals 2

    .line 1
    const-string v0, "http.request"

    .line 2
    .line 3
    iget-object p1, p1, Lvl1;->n:Lul1;

    .line 4
    .line 5
    invoke-interface {p1, v0}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lom1;

    .line 10
    .line 11
    invoke-interface {p1}, Lim1;->getParams()Lkm1;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "Name"

    .line 16
    .line 17
    iget-object v1, p0, Lrh0;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lrh0;->b:Lsh0;

    .line 23
    .line 24
    iget-object p0, p0, Lsh0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lph0;

    .line 37
    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    invoke-interface {p0, p1}, Lph0;->a(Lkm1;)Lnh0;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_0
    const-string p0, "Unsupported cookie spec: "

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    return-object p0
.end method
