-- drop tables,indexes and constraints

drop table public.countries cascade;
drop table public.country_country_group cascade;
drop table public.country_groups cascade;
drop table public.currencies cascade;
drop table public.kpi_results cascade;
drop table public.kpi_score_normalized cascade;
drop table public.kpis cascade;
drop table public.lite_comparisons cascade;
drop table public.pillars cascade;
drop table public.sources cascade;
drop table public.subtopics cascade;
drop table public.topics cascade;

-- drop sequences

drop sequence public.cg_seq cascade;
drop sequence public.ccg_seq cascade;
drop sequence public.cur_seq cascade;
drop sequence public.kpi_seq cascade;
drop sequence public.kpis_seq cascade;
drop sequence public.lite_seq cascade;
drop sequence public.normalized_seq cascade;
drop sequence public.pil_seq cascade;
drop sequence public.sou_seq cascade;
drop sequence public.sub_seq cascade;
drop sequence public.top_seq cascade;

-- drop types (enums)

drop type public.desired_value cascade;
drop type public.display_type cascade;