.class public final synthetic Lj80;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:[Ldv2;

.field public final synthetic o:Lk80;

.field public final synthetic p:I

.field public final synthetic q:Lgb2;

.field public final synthetic r:[I


# direct methods
.method public synthetic constructor <init>([Ldv2;Lk80;ILgb2;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj80;->n:[Ldv2;

    .line 5
    .line 6
    iput-object p2, p0, Lj80;->o:Lk80;

    .line 7
    .line 8
    iput p3, p0, Lj80;->p:I

    .line 9
    .line 10
    iput-object p4, p0, Lj80;->q:Lgb2;

    .line 11
    .line 12
    iput-object p5, p0, Lj80;->r:[I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, Lcv2;

    .line 2
    .line 3
    iget-object v0, p0, Lj80;->n:[Ldv2;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v2, v1, :cond_3

    .line 9
    .line 10
    aget-object v4, v0, v2

    .line 11
    .line 12
    add-int/lit8 v5, v3, 0x1

    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4}, Ldv2;->i()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    instance-of v7, v6, Lab3;

    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    if-eqz v7, :cond_0

    .line 25
    .line 26
    check-cast v6, Lab3;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    move-object v6, v8

    .line 30
    :goto_1
    iget-object v7, p0, Lj80;->q:Lgb2;

    .line 31
    .line 32
    invoke-interface {v7}, Ljt1;->getLayoutDirection()Lhy1;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    if-eqz v6, :cond_1

    .line 37
    .line 38
    iget-object v8, v6, Lab3;->c:Lal0;

    .line 39
    .line 40
    :cond_1
    iget v6, p0, Lj80;->p:I

    .line 41
    .line 42
    if-eqz v8, :cond_2

    .line 43
    .line 44
    iget v9, v4, Ldv2;->n:I

    .line 45
    .line 46
    iget-object v8, v8, Lal0;->i:Law;

    .line 47
    .line 48
    invoke-virtual {v8, v9, v6, v7}, Law;->a(IILhy1;)I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    iget-object v8, p0, Lj80;->o:Lk80;

    .line 54
    .line 55
    iget-object v8, v8, Lk80;->b:Law;

    .line 56
    .line 57
    iget v9, v4, Ldv2;->n:I

    .line 58
    .line 59
    invoke-virtual {v8, v9, v6, v7}, Law;->a(IILhy1;)I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    :goto_2
    iget-object v7, p0, Lj80;->r:[I

    .line 64
    .line 65
    aget v3, v7, v3

    .line 66
    .line 67
    invoke-static {p1, v4, v6, v3}, Lcv2;->h(Lcv2;Ldv2;II)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    move v3, v5

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    sget-object p0, Lt64;->a:Lt64;

    .line 75
    .line 76
    return-object p0
.end method
