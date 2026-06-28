.class public abstract Lwm2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ldg3;

.field public final b:Ldf1;

.field public c:Las0;

.field public d:Z

.field public final e:Lgw4;


# direct methods
.method public constructor <init>(Ldg3;Ldf1;Las0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwm2;->a:Ldg3;

    .line 5
    .line 6
    iput-object p2, p0, Lwm2;->b:Ldf1;

    .line 7
    .line 8
    iput-object p3, p0, Lwm2;->c:Las0;

    .line 9
    .line 10
    new-instance p1, Lgw4;

    .line 11
    .line 12
    const/16 p2, 0x15

    .line 13
    .line 14
    invoke-direct {p1, p2}, Lgw4;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lwm2;->e:Lgw4;

    .line 18
    .line 19
    return-void
.end method

.method public static a(Lvv2;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lvv2;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lzv2;

    .line 15
    .line 16
    invoke-virtual {v2}, Lzv2;->a()V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Ldf1;Lfh0;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lvm2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lvm2;

    .line 7
    .line 8
    iget v1, v0, Lvm2;->s:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lvm2;->s:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lvm2;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lvm2;-><init>(Lwm2;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lvm2;->q:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lvm2;->s:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_2
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iput-boolean v3, p0, Lwm2;->d:Z

    .line 49
    .line 50
    new-instance p2, Ln;

    .line 51
    .line 52
    const/16 v1, 0x1a

    .line 53
    .line 54
    invoke-direct {p2, p0, p1, v2, v1}, Ln;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 55
    .line 56
    .line 57
    iput v3, v0, Lvm2;->s:I

    .line 58
    .line 59
    new-instance p1, Lau3;

    .line 60
    .line 61
    iget-object v1, v0, Lfh0;->o:Lhi0;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, v0, v1}, Lme3;-><init>(Ldh0;Lhi0;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v3, p1, p2}, Lgg4;->S(Lme3;ZLme3;Ldf1;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    sget-object p2, Lri0;->n:Lri0;

    .line 74
    .line 75
    if-ne p1, p2, :cond_3

    .line 76
    .line 77
    return-object p2

    .line 78
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lwm2;->d:Z

    .line 80
    .line 81
    sget-object p0, Lt64;->a:Lt64;

    .line 82
    .line 83
    return-object p0
.end method
