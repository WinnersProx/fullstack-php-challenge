<?php

namespace App\Models;

class Report
{
    public static function all(): array
    {
        $db = connect();

        $sql = "SELECT
            BIN_TO_UUID(id) id,
            source,
            BIN_TO_UUID(sourceIdentityId) sourceIdentityId,
            BIN_TO_UUID(referenceId) referenceId,
            reference,
            state,
            payload,
            created
        FROM
            reports
        WHERE `state` <> 'CLOSED'";

        $query = $db->query($sql);

        $reports = $query->fetchAll(\PDO::FETCH_ASSOC);

        return formatReportsData($reports);
    }

    public static function resolve(string $reportId): void
    {
        $db = connect();

        $query = $db->prepare("UPDATE reports SET state = :state WHERE id = UUID_TO_BIN(:id)");

        $query->execute([
            'id' => $reportId,
            'state' => 'CLOSED'
        ]);
    }

    public static function updateState(string $reportId, string $state): void
    {
        $db = connect();

        $query = $db->prepare("UPDATE reports SET state = :state WHERE id = UUID_TO_BIN(:id)");

        $query->execute([
            'id' => $reportId,
            'state' => $state
        ]);
    }
}

