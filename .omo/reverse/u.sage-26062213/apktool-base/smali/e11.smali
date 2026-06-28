.class public final Le11;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Lo11;

.field public final synthetic q:Ly31;


# direct methods
.method public synthetic constructor <init>(Lo11;Ly31;I)V
    .locals 0

    .line 1
    iput p3, p0, Le11;->o:I

    .line 2
    .line 3
    iput-object p1, p0, Le11;->p:Lo11;

    .line 4
    .line 5
    iput-object p2, p0, Le11;->q:Ly31;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Le11;->o:I

    .line 2
    .line 3
    iget-object v1, p0, Le11;->q:Ly31;

    .line 4
    .line 5
    sget-object v2, Lb11;->p:Lb11;

    .line 6
    .line 7
    sget-object v3, Lb11;->o:Lb11;

    .line 8
    .line 9
    sget-object v4, Lb11;->n:Lb11;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p1, Lk14;

    .line 15
    .line 16
    invoke-interface {p1, v4, v3}, Lk14;->a(Lb11;Lb11;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    sget-object p0, Lj11;->b:Lyq3;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {p1, v3, v2}, Lk14;->a(Lb11;Lb11;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    iget-object p0, v1, Ly31;->a:Lo14;

    .line 32
    .line 33
    sget-object p0, Lj11;->b:Lyq3;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    sget-object p0, Lj11;->b:Lyq3;

    .line 37
    .line 38
    :goto_0
    return-object p0

    .line 39
    :pswitch_0
    check-cast p1, Lk14;

    .line 40
    .line 41
    invoke-interface {p1, v4, v3}, Lk14;->a(Lb11;Lb11;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget-object p0, p0, Le11;->p:Lo11;

    .line 48
    .line 49
    iget-object p0, p0, Lo11;->a:Lo14;

    .line 50
    .line 51
    iget-object p0, p0, Lo14;->a:Lk41;

    .line 52
    .line 53
    if-eqz p0, :cond_2

    .line 54
    .line 55
    iget-object p0, p0, Lk41;->a:Lz51;

    .line 56
    .line 57
    if-nez p0, :cond_6

    .line 58
    .line 59
    :cond_2
    sget-object p0, Lj11;->b:Lyq3;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    invoke-interface {p1, v3, v2}, Lk14;->a(Lb11;Lb11;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_5

    .line 67
    .line 68
    iget-object p0, v1, Ly31;->a:Lo14;

    .line 69
    .line 70
    iget-object p0, p0, Lo14;->a:Lk41;

    .line 71
    .line 72
    if-eqz p0, :cond_4

    .line 73
    .line 74
    iget-object p0, p0, Lk41;->a:Lz51;

    .line 75
    .line 76
    if-nez p0, :cond_6

    .line 77
    .line 78
    :cond_4
    sget-object p0, Lj11;->b:Lyq3;

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_5
    sget-object p0, Lj11;->b:Lyq3;

    .line 82
    .line 83
    :cond_6
    :goto_1
    return-object p0

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
