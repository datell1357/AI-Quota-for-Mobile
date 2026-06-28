.class public final Lfp0;
.super Lm1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final g:Lep0;

.field public final h:Lb40;


# direct methods
.method public constructor <init>(Lxj3;Lbv;Lep0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lm1;-><init>(Lxj3;Lbv;)V

    .line 2
    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sget-object p3, Lep0;->b:Lep0;

    .line 8
    .line 9
    :goto_0
    iput-object p3, p0, Lfp0;->g:Lep0;

    .line 10
    .line 11
    new-instance p1, Lb40;

    .line 12
    .line 13
    const/16 p2, 0x80

    .line 14
    .line 15
    invoke-direct {p1, p2}, Lb40;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lfp0;->h:Lb40;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final b(Lxj3;)Lav;
    .locals 3

    .line 1
    iget-object v0, p0, Lfp0;->h:Lb40;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lb40;->o:I

    .line 5
    .line 6
    invoke-interface {p1, v0}, Lxj3;->d(Lb40;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v2, -0x1

    .line 11
    if-eq p1, v2, :cond_0

    .line 12
    .line 13
    new-instance p1, Lky0;

    .line 14
    .line 15
    iget v2, v0, Lb40;->o:I

    .line 16
    .line 17
    invoke-direct {p1, v1, v2}, Lky0;-><init>(II)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lm1;->e:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lbv;

    .line 23
    .line 24
    invoke-virtual {v1, v0, p1}, Lbv;->b(Lb40;Lky0;)Lkv;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v0, Lav;

    .line 29
    .line 30
    iget-object p0, p0, Lfp0;->g:Lep0;

    .line 31
    .line 32
    iget-object p0, p0, Lep0;->a:Lz01;

    .line 33
    .line 34
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, p1, p0, v1}, Lav;-><init>(Lkv;Lz01;Ljava/util/Locale;)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_0
    new-instance p0, Lem2;

    .line 43
    .line 44
    const-string p1, "The target server failed to respond"

    .line 45
    .line 46
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0
.end method
