.class public final Llf3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lxf3;


# static fields
.field public static final k:Lxh1;


# instance fields
.field public final a:Lts2;

.field public final b:Lts2;

.field public final c:Lts2;

.field public final d:Lws2;

.field public final e:Lvf2;

.field public final f:Lts2;

.field public g:F

.field public final h:Lhg;

.field public final i:Los0;

.field public final j:Los0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Led3;

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    invoke-direct {v0, v1}, Led3;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljd3;

    .line 9
    .line 10
    const/4 v2, 0x4

    .line 11
    invoke-direct {v1, v2}, Ljd3;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lxh1;

    .line 15
    .line 16
    invoke-direct {v2, v0, v1}, Lxh1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sput-object v2, Llf3;->k:Lxh1;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lts2;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lts2;-><init>(I)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Llf3;->a:Lts2;

    .line 10
    .line 11
    new-instance p1, Lts2;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, v0}, Lts2;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Llf3;->b:Lts2;

    .line 18
    .line 19
    new-instance p1, Lts2;

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lts2;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Llf3;->c:Lts2;

    .line 25
    .line 26
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-static {p1}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Llf3;->d:Lws2;

    .line 33
    .line 34
    new-instance p1, Lvf2;

    .line 35
    .line 36
    invoke-direct {p1}, Lvf2;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Llf3;->e:Lvf2;

    .line 40
    .line 41
    new-instance p1, Lts2;

    .line 42
    .line 43
    const v1, 0x7fffffff

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, v1}, Lts2;-><init>(I)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Llf3;->f:Lts2;

    .line 50
    .line 51
    new-instance p1, Lv;

    .line 52
    .line 53
    const/16 v1, 0x1c

    .line 54
    .line 55
    invoke-direct {p1, v1, p0}, Lv;-><init>(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lhg;

    .line 59
    .line 60
    invoke-direct {v1, p1}, Lhg;-><init>(Lpe1;)V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Llf3;->h:Lhg;

    .line 64
    .line 65
    new-instance p1, Lkf3;

    .line 66
    .line 67
    invoke-direct {p1, p0, v0}, Lkf3;-><init>(Llf3;I)V

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lca;->m(Lne1;)Los0;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Llf3;->i:Los0;

    .line 75
    .line 76
    new-instance p1, Lkf3;

    .line 77
    .line 78
    const/4 v0, 0x1

    .line 79
    invoke-direct {p1, p0, v0}, Lkf3;-><init>(Llf3;I)V

    .line 80
    .line 81
    .line 82
    invoke-static {p1}, Lca;->m(Lne1;)Los0;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Llf3;->j:Los0;

    .line 87
    .line 88
    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 0

    .line 1
    iget-object p0, p0, Llf3;->j:Los0;

    .line 2
    .line 3
    invoke-virtual {p0}, Los0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final e()Z
    .locals 0

    .line 1
    iget-object p0, p0, Llf3;->h:Lhg;

    .line 2
    .line 3
    invoke-virtual {p0}, Lhg;->e()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final f(Lxg2;Ldf1;Lfh0;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Llf3;->h:Lhg;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lhg;->f(Lxg2;Ldf1;Lfh0;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object p1, Lri0;->n:Lri0;

    .line 8
    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object p0, Lt64;->a:Lt64;

    .line 13
    .line 14
    return-object p0
.end method

.method public final i()Z
    .locals 0

    .line 1
    iget-object p0, p0, Llf3;->i:Los0;

    .line 2
    .line 3
    invoke-virtual {p0}, Los0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final j(F)F
    .locals 0

    .line 1
    iget-object p0, p0, Llf3;->h:Lhg;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lhg;->j(F)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
