.class public final Lfv;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lh60;

.field public final b:Ldo0;

.field public volatile c:Lym1;

.field public volatile d:Ljava/lang/Object;

.field public volatile e:Lya3;

.field public final f:J

.field public g:J


# direct methods
.method public constructor <init>(Lh60;Lym1;JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Connection operator"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lfv;->a:Lh60;

    .line 10
    .line 11
    new-instance p1, Ldo0;

    .line 12
    .line 13
    invoke-direct {p1}, Ldo0;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lfv;->b:Ldo0;

    .line 17
    .line 18
    iput-object p2, p0, Lfv;->c:Lym1;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lfv;->e:Lya3;

    .line 22
    .line 23
    const-string p1, "HTTP route"

    .line 24
    .line 25
    invoke-static {p2, p1}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide p1

    .line 32
    const-wide/16 v0, 0x0

    .line 33
    .line 34
    cmp-long v0, p3, v0

    .line 35
    .line 36
    if-lez v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide p3

    .line 42
    add-long/2addr p3, p1

    .line 43
    iput-wide p3, p0, Lfv;->f:J

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-wide p1, 0x7fffffffffffffffL

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    iput-wide p1, p0, Lfv;->f:J

    .line 52
    .line 53
    :goto_0
    iget-wide p1, p0, Lfv;->f:J

    .line 54
    .line 55
    iput-wide p1, p0, Lfv;->g:J

    .line 56
    .line 57
    return-void
.end method
