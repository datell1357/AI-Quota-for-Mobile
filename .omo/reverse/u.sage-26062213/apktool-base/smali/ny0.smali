.class public abstract Lny0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Ldl0;

.field public static final b:Ldl0;

.field public static final c:Lmk0;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ldl0;

    .line 2
    .line 3
    const v1, 0x3ecccccd    # 0.4f

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const v3, 0x3e4ccccd    # 0.2f

    .line 8
    .line 9
    .line 10
    const/high16 v4, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, v3, v4}, Ldl0;-><init>(FFFF)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lny0;->a:Ldl0;

    .line 16
    .line 17
    new-instance v0, Ldl0;

    .line 18
    .line 19
    invoke-direct {v0, v2, v2, v3, v4}, Ldl0;-><init>(FFFF)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Ldl0;

    .line 23
    .line 24
    invoke-direct {v0, v1, v2, v4, v4}, Ldl0;-><init>(FFFF)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lny0;->b:Ldl0;

    .line 28
    .line 29
    new-instance v0, Lmk0;

    .line 30
    .line 31
    const/16 v1, 0x10

    .line 32
    .line 33
    invoke-direct {v0, v1}, Lmk0;-><init>(I)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lny0;->c:Lmk0;

    .line 37
    .line 38
    return-void
.end method
