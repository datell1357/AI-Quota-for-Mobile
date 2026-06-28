.class public abstract Lex2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lt52;

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lt52;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lis3;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lh03;-><init>(Lne1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final a(Lka0;Lag1;I)V
    .locals 3

    .line 1
    const v0, 0x1a6045ae

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lag1;->X(I)Lag1;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p2, 0x3

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    and-int/lit8 v1, p2, 0x1

    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Lag1;->N(IZ)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x6

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const v0, 0x694fd115

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lag1;->W(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v2}, Lag1;->p(Z)V

    .line 32
    .line 33
    .line 34
    const v0, 0x69584604

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lag1;->W(I)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p0, p1, v0}, Lka0;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v2}, Lag1;->p(Z)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p1}, Lag1;->Q()V

    .line 52
    .line 53
    .line 54
    :goto_1
    invoke-virtual {p1}, Lag1;->r()Lc33;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    new-instance v0, Lt7;

    .line 61
    .line 62
    invoke-direct {v0, p0, p2, v1}, Lt7;-><init>(Lka0;II)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p1, Lc33;->d:Ldf1;

    .line 66
    .line 67
    :cond_2
    return-void
.end method
