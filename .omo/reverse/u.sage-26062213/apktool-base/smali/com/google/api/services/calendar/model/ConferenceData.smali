.class public final Lcom/google/api/services/calendar/model/ConferenceData;
.super Lcom/google/api/client/json/GenericJson;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field private conferenceId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private conferenceSolution:Lcom/google/api/services/calendar/model/ConferenceSolution;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private createRequest:Lcom/google/api/services/calendar/model/CreateConferenceRequest;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private entryPoints:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/calendar/model/EntryPoint;",
            ">;"
        }
    .end annotation
.end field

.field private notes:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private parameters:Lcom/google/api/services/calendar/model/ConferenceParameters;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private signature:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/ConferenceData;->clone()Lcom/google/api/services/calendar/model/ConferenceData;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/ConferenceData;->clone()Lcom/google/api/services/calendar/model/ConferenceData;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/google/api/services/calendar/model/ConferenceData;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/model/ConferenceData;

    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/ConferenceData;->clone()Lcom/google/api/services/calendar/model/ConferenceData;

    move-result-object p0

    return-object p0
.end method

.method public getConferenceId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/ConferenceData;->conferenceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getConferenceSolution()Lcom/google/api/services/calendar/model/ConferenceSolution;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/ConferenceData;->conferenceSolution:Lcom/google/api/services/calendar/model/ConferenceSolution;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCreateRequest()Lcom/google/api/services/calendar/model/CreateConferenceRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/ConferenceData;->createRequest:Lcom/google/api/services/calendar/model/CreateConferenceRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method public getEntryPoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/calendar/model/EntryPoint;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/ConferenceData;->entryPoints:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getNotes()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/ConferenceData;->notes:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getParameters()Lcom/google/api/services/calendar/model/ConferenceParameters;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/ConferenceData;->parameters:Lcom/google/api/services/calendar/model/ConferenceParameters;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/ConferenceData;->signature:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/ConferenceData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/ConferenceData;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/ConferenceData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/ConferenceData;

    move-result-object p0

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/ConferenceData;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/model/ConferenceData;

    .line 6
    .line 7
    return-object p0
.end method

.method public setConferenceId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/ConferenceData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/ConferenceData;->conferenceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setConferenceSolution(Lcom/google/api/services/calendar/model/ConferenceSolution;)Lcom/google/api/services/calendar/model/ConferenceData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/ConferenceData;->conferenceSolution:Lcom/google/api/services/calendar/model/ConferenceSolution;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCreateRequest(Lcom/google/api/services/calendar/model/CreateConferenceRequest;)Lcom/google/api/services/calendar/model/ConferenceData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/ConferenceData;->createRequest:Lcom/google/api/services/calendar/model/CreateConferenceRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEntryPoints(Ljava/util/List;)Lcom/google/api/services/calendar/model/ConferenceData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/calendar/model/EntryPoint;",
            ">;)",
            "Lcom/google/api/services/calendar/model/ConferenceData;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/ConferenceData;->entryPoints:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setNotes(Ljava/lang/String;)Lcom/google/api/services/calendar/model/ConferenceData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/ConferenceData;->notes:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setParameters(Lcom/google/api/services/calendar/model/ConferenceParameters;)Lcom/google/api/services/calendar/model/ConferenceData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/ConferenceData;->parameters:Lcom/google/api/services/calendar/model/ConferenceParameters;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSignature(Ljava/lang/String;)Lcom/google/api/services/calendar/model/ConferenceData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/ConferenceData;->signature:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
