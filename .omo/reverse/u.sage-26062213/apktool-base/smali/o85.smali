.class public final Lo85;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lvc5;

.field public final synthetic p:Z

.field public final synthetic q:Lo95;

.field public final synthetic r:Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# direct methods
.method public synthetic constructor <init>(Lo95;Lvc5;ZLcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;I)V
    .locals 0

    .line 19
    iput p5, p0, Lo85;->n:I

    iput-object p2, p0, Lo85;->o:Lvc5;

    iput-boolean p3, p0, Lo85;->p:Z

    iput-object p4, p0, Lo85;->r:Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    iput-object p1, p0, Lo85;->q:Lo95;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo95;Lvc5;ZLfq4;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lo85;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lo85;->o:Lvc5;

    .line 8
    .line 9
    iput-boolean p3, p0, Lo85;->p:Z

    .line 10
    .line 11
    iput-object p4, p0, Lo85;->r:Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lo85;->q:Lo95;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lo85;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Lo85;->r:Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-boolean v3, p0, Lo85;->p:Z

    .line 7
    .line 8
    iget-object v4, p0, Lo85;->o:Lvc5;

    .line 9
    .line 10
    iget-object p0, p0, Lo85;->q:Lo95;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lo95;->d:Ln05;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lr45;

    .line 22
    .line 23
    iget-object p0, p0, Lr45;->f:La25;

    .line 24
    .line 25
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, La25;->f:Lx15;

    .line 29
    .line 30
    const-string v0, "Discarding data. Failed to send conditional user property to service"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lx15;->a(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object v2, v1

    .line 43
    check-cast v2, Lfq4;

    .line 44
    .line 45
    :goto_0
    invoke-virtual {p0, v0, v2, v4}, Lo95;->N(Ln05;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lvc5;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lo95;->I()V

    .line 49
    .line 50
    .line 51
    :goto_1
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lo95;->d:Ln05;

    .line 53
    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p0, Lr45;

    .line 59
    .line 60
    iget-object p0, p0, Lr45;->f:La25;

    .line 61
    .line 62
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, La25;->f:Lx15;

    .line 66
    .line 67
    const-string v0, "Discarding data. Failed to send event to service"

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lx15;->a(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_2
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    move-object v2, v1

    .line 80
    check-cast v2, Lbu4;

    .line 81
    .line 82
    :goto_2
    invoke-virtual {p0, v0, v2, v4}, Lo95;->N(Ln05;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lvc5;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lo95;->I()V

    .line 86
    .line 87
    .line 88
    :goto_3
    return-void

    .line 89
    :pswitch_1
    iget-object v0, p0, Lo95;->d:Ln05;

    .line 90
    .line 91
    if-nez v0, :cond_4

    .line 92
    .line 93
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p0, Lr45;

    .line 96
    .line 97
    iget-object p0, p0, Lr45;->f:La25;

    .line 98
    .line 99
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 100
    .line 101
    .line 102
    iget-object p0, p0, La25;->f:Lx15;

    .line 103
    .line 104
    const-string v0, "Discarding data. Failed to set user property"

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Lx15;->a(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_4
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    if-eqz v3, :cond_5

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_5
    move-object v2, v1

    .line 117
    check-cast v2, Lvb5;

    .line 118
    .line 119
    :goto_4
    invoke-virtual {p0, v0, v2, v4}, Lo95;->N(Ln05;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lvc5;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lo95;->I()V

    .line 123
    .line 124
    .line 125
    :goto_5
    return-void

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
