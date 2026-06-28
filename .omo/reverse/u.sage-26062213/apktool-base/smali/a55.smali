.class public final La55;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lo55;


# direct methods
.method public synthetic constructor <init>(Lo55;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p5, p0, La55;->a:I

    .line 2
    .line 3
    iput-object p2, p0, La55;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, La55;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, La55;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p1, p0, La55;->e:Lo55;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, La55;->a:I

    .line 2
    .line 3
    iget-object v1, p0, La55;->d:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, La55;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, La55;->b:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p0, p0, La55;->e:Lo55;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lo55;->c:Lpb5;

    .line 15
    .line 16
    invoke-virtual {v0}, Lpb5;->V()V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lo55;->c:Lpb5;

    .line 20
    .line 21
    iget-object p0, p0, Lpb5;->c:Lat4;

    .line 22
    .line 23
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v3, v2, v1}, Lat4;->x0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :pswitch_0
    iget-object v0, p0, Lo55;->c:Lpb5;

    .line 32
    .line 33
    invoke-virtual {v0}, Lpb5;->V()V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lo55;->c:Lpb5;

    .line 37
    .line 38
    iget-object p0, p0, Lpb5;->c:Lat4;

    .line 39
    .line 40
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v3, v2, v1}, Lat4;->x0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :pswitch_1
    iget-object v0, p0, Lo55;->c:Lpb5;

    .line 49
    .line 50
    invoke-virtual {v0}, Lpb5;->V()V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lo55;->c:Lpb5;

    .line 54
    .line 55
    iget-object p0, p0, Lpb5;->c:Lat4;

    .line 56
    .line 57
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v3, v2, v1}, Lat4;->t0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :pswitch_2
    iget-object v0, p0, Lo55;->c:Lpb5;

    .line 66
    .line 67
    invoke-virtual {v0}, Lpb5;->V()V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lo55;->c:Lpb5;

    .line 71
    .line 72
    iget-object p0, p0, Lpb5;->c:Lat4;

    .line 73
    .line 74
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v3, v2, v1}, Lat4;->t0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
