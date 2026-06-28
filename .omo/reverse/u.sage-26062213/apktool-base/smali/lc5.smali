.class public final Llc5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcu3;

.field public final c:Lcu3;

.field public final d:Lcu3;

.field public volatile e:I

.field public final f:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final g:Ljava/lang/Object;

.field public volatile h:Ln91;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcu3;Lcu3;Lcu3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Llc5;->e:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Llc5;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/Object;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Llc5;->g:Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Llc5;->h:Ln91;

    .line 23
    .line 24
    iput-object p1, p0, Llc5;->a:Landroid/content/Context;

    .line 25
    .line 26
    iput-object p2, p0, Llc5;->b:Lcu3;

    .line 27
    .line 28
    iput-object p3, p0, Llc5;->c:Lcu3;

    .line 29
    .line 30
    iput-object p4, p0, Llc5;->d:Lcu3;

    .line 31
    .line 32
    return-void
.end method
