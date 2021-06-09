<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Show;
use App\Models\Representation;

class CsvController extends Controller
{
    /**
     * Export CSV file.
     *
     * @return \Illuminate\Http\Response
     */
    public function exportCsv(Request $request)
    {
       $fileName = 'tasks.csv';
       $shows = Show::all();
    
            $headers = array(
                "Content-type"        => "text/csv",
                "Content-Disposition" => "attachment; filename=$fileName",
                "Pragma"              => "no-cache",
                "Cache-Control"       => "must-revalidate, post-check=0, pre-check=0",
                "Expires"             => "0"
            );
    
            $columns = array('Title', 'description', 'bookable', 'price', 'location', 'when',);
    
            $callback = function() use($shows, $columns) {
                $file = fopen('php://output', 'w');
                fputcsv($file, $columns);
    
                foreach ($shows as $show) {
                    $row['title']  = $show->title;
                    $row['description']    = $show->description;
                    $row['bookable']  = $show->bookable;
                    $row['price']  = $show->price;
                    $row['location']  = $show->location()->designation;
                    $row['when']  = $show->representations()->when;
    
                    fputcsv($file, array($row['title'], $row['description'], $row['bookable'], $row['location'], $row['location'], $row['when'],));
                }
    
                fclose($file);
            };
    
            return response()->stream($callback, 200, $headers);
        }
}
