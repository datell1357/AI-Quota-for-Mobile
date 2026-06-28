.class public final Lwz;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lz41;


# instance fields
.field public final synthetic a:I

.field public final b:Ler2;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ler2;I)V
    .locals 0

    .line 1
    iput p3, p0, Lwz;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lwz;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lwz;->b:Ler2;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lv01;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget p1, p0, Lwz;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sget-object v1, Lkm0;->o:Lkm0;

    .line 5
    .line 6
    iget-object v2, p0, Lwz;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object p0, p0, Lwz;->b:Ler2;

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object v3, v2

    .line 14
    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    sget-object p1, Lo94;->a:[Landroid/graphics/Bitmap$Config;

    .line 17
    .line 18
    instance-of p1, v3, Landroid/graphics/drawable/VectorDrawable;

    .line 19
    .line 20
    new-instance v0, Lco1;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-static {p0}, Lno1;->a(Ler2;)Landroid/graphics/Bitmap$Config;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget-object v5, p0, Ler2;->b:Lln3;

    .line 29
    .line 30
    iget-object v6, p0, Ler2;->c:Lrd3;

    .line 31
    .line 32
    sget-object v2, Llo1;->b:Li3;

    .line 33
    .line 34
    invoke-static {p0, v2}, Lk30;->x(Ler2;Li3;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    move-object v7, v2

    .line 39
    check-cast v7, Lln3;

    .line 40
    .line 41
    iget-object v2, p0, Ler2;->d:Lcx2;

    .line 42
    .line 43
    sget-object v8, Lcx2;->o:Lcx2;

    .line 44
    .line 45
    if-ne v2, v8, :cond_0

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    :goto_0
    move v8, v2

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    const/4 v2, 0x0

    .line 51
    goto :goto_0

    .line 52
    :goto_1
    invoke-static/range {v3 .. v8}, Lk30;->l(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lln3;Lrd3;Lln3;Z)Landroid/graphics/Bitmap;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget-object p0, p0, Ler2;->a:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 63
    .line 64
    invoke-direct {v3, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-static {v3}, Lht4;->d(Landroid/graphics/drawable/Drawable;)Lao1;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-direct {v0, p0, p1, v1}, Lco1;-><init>(Lao1;ZLkm0;)V

    .line 72
    .line 73
    .line 74
    return-object v0

    .line 75
    :pswitch_0
    new-instance p1, Lzp3;

    .line 76
    .line 77
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 78
    .line 79
    new-instance v3, Lyz;

    .line 80
    .line 81
    invoke-direct {v3, v2}, Lyz;-><init>(Ljava/nio/ByteBuffer;)V

    .line 82
    .line 83
    .line 84
    new-instance v4, Ld23;

    .line 85
    .line 86
    invoke-direct {v4, v3}, Ld23;-><init>(Lyp3;)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Ler2;->f:Lr51;

    .line 90
    .line 91
    new-instance v3, Lzz;

    .line 92
    .line 93
    invoke-direct {v3, v2}, Lzz;-><init>(Ljava/nio/ByteBuffer;)V

    .line 94
    .line 95
    .line 96
    new-instance v2, Laq3;

    .line 97
    .line 98
    invoke-direct {v2, v4, p0, v3}, Laq3;-><init>(Lfz;Lr51;Lfl4;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p1, v2, v0, v1}, Lzp3;-><init>(Lpo1;Ljava/lang/String;Lkm0;)V

    .line 102
    .line 103
    .line 104
    return-object p1

    .line 105
    :pswitch_1
    new-instance p1, Lsy;

    .line 106
    .line 107
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 108
    .line 109
    .line 110
    check-cast v2, [B

    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    array-length v3, v2

    .line 116
    invoke-virtual {p1, v3, v2}, Lsy;->i0(I[B)V

    .line 117
    .line 118
    .line 119
    iget-object p0, p0, Ler2;->f:Lr51;

    .line 120
    .line 121
    new-instance v2, Laq3;

    .line 122
    .line 123
    invoke-direct {v2, p1, p0, v0}, Laq3;-><init>(Lfz;Lr51;Lfl4;)V

    .line 124
    .line 125
    .line 126
    new-instance p0, Lzp3;

    .line 127
    .line 128
    invoke-direct {p0, v2, v0, v1}, Lzp3;-><init>(Lpo1;Ljava/lang/String;Lkm0;)V

    .line 129
    .line 130
    .line 131
    return-object p0

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
