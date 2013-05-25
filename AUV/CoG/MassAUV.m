classdef MassAUV
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        x = 0;
        y = 0;
        z = 0;
        m = 0;
    end
    
    methods
        function p = returnPos(obj)
            p = [obj.x, obj.y, obj.z]';
        end
        function plot(obj, varargin)
            plot(obj.x, obj.y, varargin{:});
        end
        function plot3(obj, varargin)
            plot3(obj.x, obj.y, obj.z, varargin{:});
        end
    end
    
end

