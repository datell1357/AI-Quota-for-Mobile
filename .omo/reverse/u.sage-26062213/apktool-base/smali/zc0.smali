.class public final Lzc0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public a:Lorg/json/JSONObject;

.field public b:Ljava/util/Date;

.field public c:Lorg/json/JSONArray;

.field public d:Lorg/json/JSONObject;

.field public e:J

.field public f:Lorg/json/JSONArray;


# virtual methods
.method public final a()Lad0;
    .locals 8

    .line 1
    new-instance v0, Lad0;

    .line 2
    .line 3
    iget-object v1, p0, Lzc0;->a:Lorg/json/JSONObject;

    .line 4
    .line 5
    iget-object v2, p0, Lzc0;->b:Ljava/util/Date;

    .line 6
    .line 7
    iget-object v3, p0, Lzc0;->c:Lorg/json/JSONArray;

    .line 8
    .line 9
    iget-object v4, p0, Lzc0;->d:Lorg/json/JSONObject;

    .line 10
    .line 11
    iget-wide v5, p0, Lzc0;->e:J

    .line 12
    .line 13
    iget-object v7, p0, Lzc0;->f:Lorg/json/JSONArray;

    .line 14
    .line 15
    invoke-direct/range {v0 .. v7}, Lad0;-><init>(Lorg/json/JSONObject;Ljava/util/Date;Lorg/json/JSONArray;Lorg/json/JSONObject;JLorg/json/JSONArray;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method
