.class public final Lkh0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# static fields
.field public static final o:Lkh0;


# instance fields
.field public final synthetic n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkh0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkh0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lkh0;->o:Lkh0;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lkh0;->n:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 1
    iget p0, p0, Lkh0;->n:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    const-string v1, "/"

    .line 5
    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lku;

    .line 10
    .line 11
    check-cast p2, Lku;

    .line 12
    .line 13
    iget-object p0, p1, Lku;->n:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p2, Lku;->n:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_4

    .line 22
    .line 23
    iget-object p0, p1, Lku;->q:Ljava/lang/String;

    .line 24
    .line 25
    const-string v2, ".local"

    .line 26
    .line 27
    const/16 v3, 0x2e

    .line 28
    .line 29
    const-string v4, ""

    .line 30
    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    move-object p0, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-ne v5, v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    :cond_1
    :goto_0
    iget-object v5, p2, Lku;->q:Ljava/lang/String;

    .line 46
    .line 47
    if-nez v5, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(I)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-ne v3, v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    move-object v4, v5

    .line 62
    :goto_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    :cond_4
    if-nez p0, :cond_7

    .line 67
    .line 68
    iget-object p0, p1, Lku;->s:Ljava/lang/String;

    .line 69
    .line 70
    if-nez p0, :cond_5

    .line 71
    .line 72
    move-object p0, v1

    .line 73
    :cond_5
    iget-object p1, p2, Lku;->s:Ljava/lang/String;

    .line 74
    .line 75
    if-nez p1, :cond_6

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_6
    move-object v1, p1

    .line 79
    :goto_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    :cond_7
    return p0

    .line 84
    :pswitch_0
    check-cast p1, Lku;

    .line 85
    .line 86
    check-cast p2, Lku;

    .line 87
    .line 88
    iget-object p0, p1, Lku;->s:Ljava/lang/String;

    .line 89
    .line 90
    if-nez p0, :cond_8

    .line 91
    .line 92
    move-object p0, v1

    .line 93
    :cond_8
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_9

    .line 98
    .line 99
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    :cond_9
    iget-object p1, p2, Lku;->s:Ljava/lang/String;

    .line 104
    .line 105
    if-nez p1, :cond_a

    .line 106
    .line 107
    move-object p1, v1

    .line 108
    :cond_a
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    if-nez p2, :cond_b

    .line 113
    .line 114
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-eqz p2, :cond_c

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-eqz p2, :cond_d

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_d
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    if-eqz p0, :cond_e

    .line 137
    .line 138
    const/4 v0, 0x1

    .line 139
    goto :goto_4

    .line 140
    :cond_e
    :goto_3
    const/4 v0, 0x0

    .line 141
    :goto_4
    return v0

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
