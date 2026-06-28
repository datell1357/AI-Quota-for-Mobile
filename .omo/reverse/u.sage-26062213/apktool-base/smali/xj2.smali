.class public final synthetic Lxj2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Lrj2;

.field public final synthetic o:Z

.field public final synthetic p:Z

.field public final synthetic q:Lyq3;

.field public final synthetic r:Ldf1;


# direct methods
.method public synthetic constructor <init>(Lrj2;ZZLyq3;Ldf1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxj2;->n:Lrj2;

    .line 5
    .line 6
    iput-boolean p2, p0, Lxj2;->o:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lxj2;->p:Z

    .line 9
    .line 10
    iput-object p4, p0, Lxj2;->q:Lyq3;

    .line 11
    .line 12
    iput-object p5, p0, Lxj2;->r:Ldf1;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Lag1;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    and-int/lit8 p2, p1, 0x3

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq p2, v0, :cond_0

    .line 15
    .line 16
    move p2, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p2, 0x0

    .line 19
    :goto_0
    and-int/2addr p1, v1

    .line 20
    invoke-virtual {v4, p1, p2}, Lag1;->N(IZ)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    sget-object p1, Lse0;->C:Lf54;

    .line 27
    .line 28
    invoke-static {p1, v4}, Lg54;->a(Lf54;Lag1;)Lay3;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object p1, p0, Lxj2;->n:Lrj2;

    .line 33
    .line 34
    iget-boolean p2, p0, Lxj2;->p:Z

    .line 35
    .line 36
    if-nez p2, :cond_1

    .line 37
    .line 38
    iget-wide p1, p1, Lrj2;->g:J

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-boolean p2, p0, Lxj2;->o:Z

    .line 42
    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    iget-wide p1, p1, Lrj2;->b:J

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iget-wide p1, p1, Lrj2;->e:J

    .line 49
    .line 50
    :goto_1
    iget-object v0, p0, Lxj2;->q:Lyq3;

    .line 51
    .line 52
    invoke-static {p1, p2, v0, v4}, Len3;->a(JLyq3;Lag1;)Ltr3;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-interface {p1}, Ltr3;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lt70;

    .line 61
    .line 62
    iget-wide v0, p1, Lt70;->a:J

    .line 63
    .line 64
    const/4 v5, 0x0

    .line 65
    iget-object v3, p0, Lxj2;->r:Ldf1;

    .line 66
    .line 67
    invoke-static/range {v0 .. v5}, Lw80;->a(JLay3;Ldf1;Lag1;I)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    invoke-virtual {v4}, Lag1;->Q()V

    .line 72
    .line 73
    .line 74
    :goto_2
    sget-object p0, Lt64;->a:Lt64;

    .line 75
    .line 76
    return-object p0
.end method
