.class public final Lkh3;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# static fields
.field public static final p:Lkh3;

.field public static final q:Lkh3;

.field public static final r:Lkh3;

.field public static final s:Lkh3;

.field public static final t:Lkh3;

.field public static final u:Lkh3;

.field public static final v:Lkh3;

.field public static final w:Lkh3;

.field public static final x:Lkh3;


# instance fields
.field public final synthetic o:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkh3;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lkh3;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lkh3;->p:Lkh3;

    .line 9
    .line 10
    new-instance v0, Lkh3;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v0, v1, v2}, Lkh3;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lkh3;->q:Lkh3;

    .line 17
    .line 18
    new-instance v0, Lkh3;

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-direct {v0, v1, v2}, Lkh3;-><init>(II)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lkh3;->r:Lkh3;

    .line 25
    .line 26
    new-instance v0, Lkh3;

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    invoke-direct {v0, v1, v2}, Lkh3;-><init>(II)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lkh3;->s:Lkh3;

    .line 33
    .line 34
    new-instance v0, Lkh3;

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-direct {v0, v1, v2}, Lkh3;-><init>(II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lkh3;->t:Lkh3;

    .line 41
    .line 42
    new-instance v0, Lkh3;

    .line 43
    .line 44
    const/4 v2, 0x5

    .line 45
    invoke-direct {v0, v1, v2}, Lkh3;-><init>(II)V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lkh3;->u:Lkh3;

    .line 49
    .line 50
    new-instance v0, Lkh3;

    .line 51
    .line 52
    const/4 v2, 0x6

    .line 53
    invoke-direct {v0, v1, v2}, Lkh3;-><init>(II)V

    .line 54
    .line 55
    .line 56
    sput-object v0, Lkh3;->v:Lkh3;

    .line 57
    .line 58
    new-instance v0, Lkh3;

    .line 59
    .line 60
    const/4 v2, 0x7

    .line 61
    invoke-direct {v0, v1, v2}, Lkh3;-><init>(II)V

    .line 62
    .line 63
    .line 64
    sput-object v0, Lkh3;->w:Lkh3;

    .line 65
    .line 66
    new-instance v0, Lkh3;

    .line 67
    .line 68
    const/16 v2, 0x8

    .line 69
    .line 70
    invoke-direct {v0, v1, v2}, Lkh3;-><init>(II)V

    .line 71
    .line 72
    .line 73
    sput-object v0, Lkh3;->x:Lkh3;

    .line 74
    .line 75
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lkh3;->o:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget p0, p0, Lkh3;->o:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lgh3;

    .line 7
    .line 8
    check-cast p2, Lgh3;

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object p1, p1, Lgh3;->d:Lbh3;

    .line 16
    .line 17
    sget-object v0, Llh3;->u:Loh3;

    .line 18
    .line 19
    iget-object p1, p1, Lbh3;->n:Lkg2;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    move-object p1, p0

    .line 28
    :cond_0
    check-cast p1, Ljava/lang/Number;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget-object p2, p2, Lgh3;->d:Lbh3;

    .line 35
    .line 36
    iget-object p2, p2, Lbh3;->n:Lkg2;

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-nez p2, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-object p0, p2

    .line 46
    :goto_0
    check-cast p0, Ljava/lang/Number;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :pswitch_0
    if-nez p1, :cond_2

    .line 62
    .line 63
    move-object p1, p2

    .line 64
    :cond_2
    return-object p1

    .line 65
    :pswitch_1
    check-cast p1, Lo2;

    .line 66
    .line 67
    check-cast p2, Lo2;

    .line 68
    .line 69
    new-instance p0, Lo2;

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    iget-object v0, p1, Lo2;->a:Ljava/lang/String;

    .line 74
    .line 75
    if-nez v0, :cond_4

    .line 76
    .line 77
    :cond_3
    iget-object v0, p2, Lo2;->a:Ljava/lang/String;

    .line 78
    .line 79
    :cond_4
    if-eqz p1, :cond_5

    .line 80
    .line 81
    iget-object p1, p1, Lo2;->b:Lef1;

    .line 82
    .line 83
    if-nez p1, :cond_6

    .line 84
    .line 85
    :cond_5
    iget-object p1, p2, Lo2;->b:Lef1;

    .line 86
    .line 87
    :cond_6
    invoke-direct {p0, v0, p1}, Lo2;-><init>(Ljava/lang/String;Lef1;)V

    .line 88
    .line 89
    .line 90
    return-object p0

    .line 91
    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    .line 92
    .line 93
    check-cast p2, Ljava/lang/Boolean;

    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 96
    .line 97
    .line 98
    return-object p1

    .line 99
    :pswitch_3
    if-nez p1, :cond_7

    .line 100
    .line 101
    if-nez p2, :cond_7

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_7
    invoke-static {}, Lmk0;->b()V

    .line 105
    .line 106
    .line 107
    :goto_1
    const/4 p0, 0x0

    .line 108
    return-object p0

    .line 109
    :pswitch_4
    check-cast p1, Ljava/lang/String;

    .line 110
    .line 111
    check-cast p2, Ljava/lang/String;

    .line 112
    .line 113
    return-object p1

    .line 114
    :pswitch_5
    check-cast p1, Ljava/lang/Float;

    .line 115
    .line 116
    check-cast p2, Ljava/lang/Number;

    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 119
    .line 120
    .line 121
    return-object p1

    .line 122
    :pswitch_6
    check-cast p1, Ljava/util/List;

    .line 123
    .line 124
    check-cast p2, Ljava/util/List;

    .line 125
    .line 126
    if-eqz p1, :cond_8

    .line 127
    .line 128
    new-instance p0, Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 134
    .line 135
    .line 136
    move-object p2, p0

    .line 137
    :cond_8
    return-object p2

    .line 138
    :pswitch_7
    check-cast p1, Ljava/lang/String;

    .line 139
    .line 140
    check-cast p2, Ljava/lang/String;

    .line 141
    .line 142
    return-object p1

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
