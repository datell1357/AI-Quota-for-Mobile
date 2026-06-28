.class public final Lqa4;
.super Lmd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljx0;


# instance fields
.field public B:Lj14;

.field public C:Lo11;

.field public D:Ly31;

.field public E:Lzl3;


# virtual methods
.method public final K(Lzy1;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lzy1;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lqa4;->B:Lj14;

    .line 5
    .line 6
    new-instance v1, Lpa4;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p0, v2}, Lpa4;-><init>(Lqa4;I)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lqa4;->E:Lzl3;

    .line 13
    .line 14
    invoke-virtual {v2}, Lzl3;->a()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    iget-wide v2, v2, Lzl3;->e:J

    .line 22
    .line 23
    new-instance v5, Lt70;

    .line 24
    .line 25
    invoke-direct {v5, v2, v3}, Lt70;-><init>(J)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v5, v4

    .line 30
    :goto_0
    new-instance v2, Lpa4;

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-direct {v2, p0, v3}, Lpa4;-><init>(Lqa4;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v5, v4, v2}, Lj14;->a(Lpe1;Ljava/lang/Object;Lbf;Lpe1;)Li14;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lqa4;->E:Lzl3;

    .line 41
    .line 42
    invoke-virtual {v0}, Li14;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lt70;

    .line 47
    .line 48
    iget-wide v2, v0, Lt70;->a:J

    .line 49
    .line 50
    iget-object v0, v1, Lzl3;->c:Ldh;

    .line 51
    .line 52
    invoke-virtual {v1}, Lzl3;->b()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    iget-object v4, v0, Ldh;->g:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v4, Lws2;

    .line 61
    .line 62
    invoke-virtual {v4}, Lws2;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_1

    .line 73
    .line 74
    iget-object v0, v0, Ldh;->h:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Lws2;

    .line 77
    .line 78
    invoke-virtual {v0}, Lws2;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lt70;

    .line 83
    .line 84
    iget-wide v2, v0, Lt70;->a:J

    .line 85
    .line 86
    :cond_1
    move-wide v5, v2

    .line 87
    invoke-virtual {v1}, Lzl3;->b()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    iput-wide v5, v1, Lzl3;->e:J

    .line 94
    .line 95
    :cond_2
    invoke-static {v5, v6}, Lt70;->d(J)F

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    const/4 v1, 0x0

    .line 100
    cmpg-float v0, v0, v1

    .line 101
    .line 102
    if-nez v0, :cond_3

    .line 103
    .line 104
    return-void

    .line 105
    :cond_3
    iget-object v0, p0, Lqa4;->C:Lo11;

    .line 106
    .line 107
    iget-object v0, v0, Lo11;->a:Lo14;

    .line 108
    .line 109
    iget-object p0, p0, Lqa4;->D:Ly31;

    .line 110
    .line 111
    iget-object p0, p0, Ly31;->a:Lo14;

    .line 112
    .line 113
    const-wide/16 v7, 0x0

    .line 114
    .line 115
    const/16 v9, 0x7e

    .line 116
    .line 117
    move-object v4, p1

    .line 118
    invoke-static/range {v4 .. v9}, Lkx0;->C(Lkx0;JJI)V

    .line 119
    .line 120
    .line 121
    return-void
.end method
