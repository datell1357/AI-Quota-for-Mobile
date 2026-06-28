.class public final synthetic Lsx;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/io/Serializable;

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p7, p0, Lsx;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lsx;->o:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lsx;->p:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lsx;->q:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lsx;->r:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Lsx;->s:Ljava/io/Serializable;

    .line 12
    .line 13
    iput-object p6, p0, Lsx;->t:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lsx;->n:I

    .line 4
    .line 5
    sget-object v2, Lt64;->a:Lt64;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object v4, v0, Lsx;->t:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v5, v0, Lsx;->s:Ljava/io/Serializable;

    .line 11
    .line 12
    iget-object v6, v0, Lsx;->r:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v7, v0, Lsx;->q:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v8, v0, Lsx;->p:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v0, v0, Lsx;->o:Ljava/lang/Object;

    .line 19
    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    check-cast v0, Lwh1;

    .line 24
    .line 25
    check-cast v8, Ls92;

    .line 26
    .line 27
    check-cast v7, Lqi0;

    .line 28
    .line 29
    check-cast v6, Ln8;

    .line 30
    .line 31
    check-cast v5, Ly84;

    .line 32
    .line 33
    check-cast v4, Lm10;

    .line 34
    .line 35
    move-object/from16 v1, p1

    .line 36
    .line 37
    check-cast v1, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    sget-object v1, Lez3;->a:Lra3;

    .line 46
    .line 47
    new-array v4, v3, [Ljava/lang/Object;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {v4}, Lra3;->c([Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lwh1;->f()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    new-array v1, v3, [Ljava/lang/Object;

    .line 74
    .line 75
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v8, v0}, Ls92;->a(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    new-array v0, v3, [Ljava/lang/Object;

    .line 82
    .line 83
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    new-instance v1, Lcl3;

    .line 88
    .line 89
    const/4 v3, 0x0

    .line 90
    const/4 v8, 0x1

    .line 91
    invoke-direct {v1, v4, v0, v3, v8}, Lcl3;-><init>(Lm10;Lwh1;Ldh0;I)V

    .line 92
    .line 93
    .line 94
    const/4 v0, 0x3

    .line 95
    invoke-static {v7, v3, v3, v1, v0}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 96
    .line 97
    .line 98
    const-string v0, "calendar_sync_enabled"

    .line 99
    .line 100
    const-string v1, "false"

    .line 101
    .line 102
    invoke-virtual {v6, v5, v0, v1}, Ln8;->i(Ly84;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :goto_0
    return-object v2

    .line 106
    :pswitch_0
    check-cast v0, [Ldv2;

    .line 107
    .line 108
    check-cast v8, Ljava/util/List;

    .line 109
    .line 110
    check-cast v7, Lgb2;

    .line 111
    .line 112
    check-cast v6, Lu33;

    .line 113
    .line 114
    check-cast v5, Lu33;

    .line 115
    .line 116
    check-cast v4, Ltx;

    .line 117
    .line 118
    move-object/from16 v9, p1

    .line 119
    .line 120
    check-cast v9, Lcv2;

    .line 121
    .line 122
    array-length v1, v0

    .line 123
    move v10, v3

    .line 124
    :goto_1
    if-ge v3, v1, :cond_1

    .line 125
    .line 126
    aget-object v11, v0, v3

    .line 127
    .line 128
    add-int/lit8 v16, v10, 0x1

    .line 129
    .line 130
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    check-cast v10, Lya2;

    .line 138
    .line 139
    invoke-interface {v7}, Ljt1;->getLayoutDirection()Lhy1;

    .line 140
    .line 141
    .line 142
    move-result-object v12

    .line 143
    iget v13, v6, Lu33;->n:I

    .line 144
    .line 145
    iget v14, v5, Lu33;->n:I

    .line 146
    .line 147
    iget-object v15, v4, Ltx;->a:Lcw;

    .line 148
    .line 149
    move-object/from16 v17, v11

    .line 150
    .line 151
    move-object v11, v10

    .line 152
    move-object/from16 v10, v17

    .line 153
    .line 154
    invoke-static/range {v9 .. v15}, Lqx;->b(Lcv2;Ldv2;Lya2;Lhy1;IILcw;)V

    .line 155
    .line 156
    .line 157
    add-int/lit8 v3, v3, 0x1

    .line 158
    .line 159
    move/from16 v10, v16

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_1
    return-object v2

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
