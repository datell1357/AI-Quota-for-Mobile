.class public final synthetic Liu1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lju1;


# direct methods
.method public synthetic constructor <init>(Lju1;I)V
    .locals 0

    .line 1
    iput p2, p0, Liu1;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Liu1;->o:Lju1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Liu1;->n:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Liu1;->o:Lju1;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    move-object v3, p1

    .line 10
    check-cast v3, Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v4, p0, Lju1;->a:Ljava/lang/String;

    .line 16
    .line 17
    sget-object p0, Ldm3;->a:Ljava/util/LinkedHashSet;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v2, Lcm3;

    .line 23
    .line 24
    new-instance v6, Lp4;

    .line 25
    .line 26
    const/16 p1, 0xb

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-direct {v6, p0, v0, p1}, Lp4;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 30
    .line 31
    .line 32
    new-instance v7, Lu4;

    .line 33
    .line 34
    const/4 p0, 0x3

    .line 35
    invoke-direct {v7, p0, v0, v1}, Lu4;-><init>(ILdh0;I)V

    .line 36
    .line 37
    .line 38
    sget-object v5, Lem3;->a:Ljava/util/LinkedHashSet;

    .line 39
    .line 40
    invoke-direct/range {v2 .. v7}, Lcm3;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lp4;Lu4;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :pswitch_0
    check-cast p1, Lxi0;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const-class v0, Lju1;

    .line 54
    .line 55
    invoke-static {v0}, Ly33;->a(Ljava/lang/Class;)Li50;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Li50;->c()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v3, "CorruptionException in "

    .line 66
    .line 67
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lju1;->a:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p0, " DataStore running in process "

    .line 76
    .line 77
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .line 93
    .line 94
    new-instance p0, Lhg2;

    .line 95
    .line 96
    invoke-direct {p0, v1}, Lhg2;-><init>(Z)V

    .line 97
    .line 98
    .line 99
    return-object p0

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
