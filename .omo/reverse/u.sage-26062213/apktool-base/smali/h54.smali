.class public abstract Lh54;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lay3;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v9, Li32;

    .line 2
    .line 3
    sget v0, Lf32;->b:F

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v9, v0, v1, v1}, Li32;-><init>(FII)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lay3;->d:Lay3;

    .line 10
    .line 11
    const-wide/16 v7, 0x0

    .line 12
    .line 13
    const v10, 0xe7ffff

    .line 14
    .line 15
    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const-wide/16 v5, 0x0

    .line 21
    .line 22
    invoke-static/range {v0 .. v10}, Lay3;->a(Lay3;JLpb1;Lra1;JJLi32;I)Lay3;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lh54;->a:Lay3;

    .line 27
    .line 28
    return-void
.end method
