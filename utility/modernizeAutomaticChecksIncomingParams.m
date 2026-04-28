function result = modernizeAutomaticChecksIncomingParams(raw_params)

result = raw_params ;

if ~iscell(raw_params.control_line_names)
  result.control_line_names = {raw_params.control_line_names};
end

if ~isfield(raw_params, 'max_num_flies_damaged') ,
  result.max_num_flies_damaged = 0 ;
end

if ~isfield(raw_params, 'max_num_flies_dead') ,
  result.max_num_flies_dead = 0 ;
end

end  % function
