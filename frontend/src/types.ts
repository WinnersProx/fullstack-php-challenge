

interface IReportPayload {
    source: string,
    reportType: string,
    message: string|null,
    reportId: string,
    referenceResourceId: string,
    referenceResourceType: string
}


export interface IReport {
    id: string,
    source: string,
    sourceIdentityId: string,
    reference: { referenceId: string, referenceType: string },
    state: 'OPEN' | 'CLOSED' | 'BLOCKED',
    payload: IReportPayload,
    created: string
}
