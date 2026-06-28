.class public final Lbl1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:I

.field public final o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcl1;Lfl1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lbl1;->n:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbl1;->p:Ljava/lang/Object;

    .line 13
    iput-object p2, p0, Lbl1;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lpe1;Ly84;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lbl1;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lbl1;->o:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lbl1;->p:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lbl1;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object v2, p0, Lbl1;->p:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lbl1;->o:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v3, Lpe1;

    .line 13
    .line 14
    check-cast v2, Ly84;

    .line 15
    .line 16
    invoke-interface {v3, v2}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :pswitch_0
    check-cast v2, Lcl1;

    .line 21
    .line 22
    check-cast v3, Lfl1;

    .line 23
    .line 24
    sget-object v0, Ld21;->r:Ld21;

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    const/4 v5, 0x0

    .line 28
    :try_start_0
    invoke-virtual {v3, v4, p0}, Lfl1;->b(ZLbl1;)Z

    .line 29
    .line 30
    .line 31
    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    :cond_0
    const/4 v4, 0x0

    .line 35
    :try_start_1
    invoke-virtual {v3, v4, p0}, Lfl1;->b(ZLbl1;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_0

    .line 40
    .line 41
    sget-object p0, Ld21;->p:Ld21;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    .line 43
    :try_start_2
    sget-object v0, Ld21;->u:Ld21;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    .line 45
    invoke-virtual {v2, p0, v0, v5}, Lcl1;->b(Ld21;Ld21;Ljava/io/IOException;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-static {v3}, Lfi4;->a(Ljava/io/Closeable;)V

    .line 49
    .line 50
    .line 51
    goto :goto_4

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    goto :goto_5

    .line 54
    :catch_0
    move-exception v4

    .line 55
    move-object v5, v4

    .line 56
    goto :goto_3

    .line 57
    :catchall_1
    move-exception v1

    .line 58
    :goto_1
    move-object p0, v0

    .line 59
    goto :goto_5

    .line 60
    :catch_1
    move-exception p0

    .line 61
    move-object v5, p0

    .line 62
    move-object p0, v0

    .line 63
    goto :goto_3

    .line 64
    :cond_1
    :try_start_3
    new-instance p0, Ljava/io/IOException;

    .line 65
    .line 66
    const-string v4, "Required SETTINGS preface not received"

    .line 67
    .line 68
    invoke-direct {p0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 72
    :goto_2
    move-object v1, p0

    .line 73
    goto :goto_1

    .line 74
    :catchall_2
    move-exception p0

    .line 75
    goto :goto_2

    .line 76
    :goto_3
    :try_start_4
    sget-object p0, Ld21;->q:Ld21;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 77
    .line 78
    invoke-virtual {v2, p0, p0, v5}, Lcl1;->b(Ld21;Ld21;Ljava/io/IOException;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :goto_4
    return-object v1

    .line 83
    :goto_5
    invoke-virtual {v2, p0, v0, v5}, Lcl1;->b(Ld21;Ld21;Ljava/io/IOException;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v3}, Lfi4;->a(Ljava/io/Closeable;)V

    .line 87
    .line 88
    .line 89
    throw v1

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
