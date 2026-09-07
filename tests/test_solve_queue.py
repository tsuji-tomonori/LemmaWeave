import datetime as dt
import sys
import unittest
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'scripts'))
from solve_queue import finish_date, weekly_rate, deferred_ids

class SolveQueue(unittest.TestCase):
    def test_fixed_scope_forecast_and_partial_last_day(self):
        start=dt.date(2026,9,7)
        self.assertEqual(finish_date(start,8789,50),'2027-03-01')
        self.assertEqual(finish_date(start,51,50),'2026-09-08')
        self.assertIsNone(finish_date(start,12,0))
    def test_zero_days_are_not_omitted_and_duplicates_do_not_inflate_rate(self):
        start=dt.date(2026,9,7)
        logs=[{'date':'2026-09-07','started_at':'a','completed_problem_ids':['a','b']},
              {'date':'2026-09-08','started_at':'b','completed_problem_ids':['b','c']}]
        self.assertEqual(weekly_rate(logs,dt.date(2026,9,14),start),3/7)
        self.assertIsNone(weekly_rate(logs,dt.date(2026,9,13),start))
    def test_failed_problem_is_deferred_without_blocking_the_rest(self):
        logs=[{'deferred':[{'problem_id':'hard','retry_on':'2026-09-09'}]}]
        self.assertEqual(deferred_ids(logs,dt.date(2026,9,8)),{'hard'})
        self.assertEqual(deferred_ids(logs,dt.date(2026,9,9)),set())
