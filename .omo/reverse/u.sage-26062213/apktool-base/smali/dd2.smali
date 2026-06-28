.class public final Ldd2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static h:Ldd2;


# instance fields
.field public final a:Lhy1;

.field public final b:Lay3;

.field public final c:Lds0;

.field public final d:Lqa1;

.field public final e:Lay3;

.field public f:F

.field public g:F


# direct methods
.method public constructor <init>(Lhy1;Lay3;Lds0;Lqa1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldd2;->a:Lhy1;

    .line 5
    .line 6
    iput-object p2, p0, Ldd2;->b:Lay3;

    .line 7
    .line 8
    iput-object p3, p0, Ldd2;->c:Lds0;

    .line 9
    .line 10
    iput-object p4, p0, Ldd2;->d:Lqa1;

    .line 11
    .line 12
    invoke-static {p2, p1}, Lfl4;->u(Lay3;Lhy1;)Lay3;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Ldd2;->e:Lay3;

    .line 17
    .line 18
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 19
    .line 20
    iput p1, p0, Ldd2;->f:F

    .line 21
    .line 22
    iput p1, p0, Ldd2;->g:F

    .line 23
    .line 24
    return-void
.end method
