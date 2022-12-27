<?php

namespace App\Controllers;
use App\Models\Report;

class ReportController
{

    public function index(): void {
        $reports = Report::all();

        jsonResponse([ 'data' => $reports ]);
    }

    public function resolve(array $params): void
    {
        $reportId = $params['reportId'];

        Report::updateState($reportId, 'CLOSED');

        actionResponse("Report successfully resolved");
    }

    public function blockReport(array $params): void
    {
        $reportId = $params['reportId'];

        Report::updateState($reportId, 'BLOCKED');

        actionResponse("Report successfully blocked");
    }

}
