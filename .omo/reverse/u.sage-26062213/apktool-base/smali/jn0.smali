.class public abstract Ljn0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Llc;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Llc;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Llc;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ljn0;->a:Llc;

    .line 8
    .line 9
    const-string v15, "EEE, dd-MM-yyyy HH:mm:ss z"

    .line 10
    .line 11
    const-string v16, "EEE MMM d yyyy HH:mm:ss z"

    .line 12
    .line 13
    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    .line 14
    .line 15
    const-string v3, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    .line 16
    .line 17
    const-string v4, "EEE MMM d HH:mm:ss yyyy"

    .line 18
    .line 19
    const-string v5, "EEE, dd-MMM-yyyy HH:mm:ss z"

    .line 20
    .line 21
    const-string v6, "EEE, dd-MMM-yyyy HH-mm-ss z"

    .line 22
    .line 23
    const-string v7, "EEE, dd MMM yy HH:mm:ss z"

    .line 24
    .line 25
    const-string v8, "EEE dd-MMM-yyyy HH:mm:ss z"

    .line 26
    .line 27
    const-string v9, "EEE dd MMM yyyy HH:mm:ss z"

    .line 28
    .line 29
    const-string v10, "EEE dd-MMM-yyyy HH-mm-ss z"

    .line 30
    .line 31
    const-string v11, "EEE dd-MMM-yy HH:mm:ss z"

    .line 32
    .line 33
    const-string v12, "EEE dd MMM yy HH:mm:ss z"

    .line 34
    .line 35
    const-string v13, "EEE,dd-MMM-yy HH:mm:ss z"

    .line 36
    .line 37
    const-string v14, "EEE,dd-MMM-yyyy HH:mm:ss z"

    .line 38
    .line 39
    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    array-length v0, v0

    .line 44
    new-array v0, v0, [Ljava/text/DateFormat;

    .line 45
    .line 46
    return-void
.end method
