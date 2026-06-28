.class public final Ln02;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Li12;

.field public final b:Leh;

.field public c:Lmu0;

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Li12;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Leh;

    .line 5
    .line 6
    const/16 v1, 0x1b

    .line 7
    .line 8
    invoke-direct {v0, v1}, Leh;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ln02;->b:Leh;

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    iput v0, p0, Ln02;->d:I

    .line 15
    .line 16
    iput v0, p0, Ln02;->e:I

    .line 17
    .line 18
    iput-object p1, p0, Ln02;->a:Li12;

    .line 19
    .line 20
    return-void
.end method
